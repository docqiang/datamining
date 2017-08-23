#encoding:utf-8
#词云
import wordcloud as wc
import matplotlib.pylab as plb
import pymysql
conn=pymysql.connect(host="192.168.254.13", user="root",passwd="reeman",db="datamining") # db="hexun"
#选择热门关键词
sql1="select name from myhexun"
cur=conn.cursor()
cur.execute(sql1)
# print(cur)
name=" "
s=0
for i in cur:
    name=name+str(i[0])+" "
    s+=1
print(s)
# font=r"C:\WINDOWS\Fonts\simhei.ttf"
font = 'C:/windows/fonts/SIMYOU.TTF'
# mywc=wc.WordCloud(collocations=False, font_path=font).generate(name)
print(name)
mywc=wc.WordCloud(collocations=False, width=800, height=600, font_path=font).generate(name)
plb.imshow(mywc)
plb.axis('off')
plb.show()
exit()
#热力图
#注意：热力图的数据由于涉及到核心商业信息，所以无法给大家提供，仅演示给大家
#让大家学会如何创建热力图，练习的时候大家可以自己找数据
#本热力图涉及的数据不提供，还望理解！
import folium
from folium.plugins import HeatMap
import pymysql
conn=pymysql.connect(host="192.168.254.13",user="root",passwd="reeman",db="datamining") # db="foods"
sql="select distinct area2 from food"
cur=conn.cursor()
cur.execute(sql)
area=[i[0] for i in cur]
data=[]
for a in area:
    sql2="select price*num from food where area2='"+str(a)+"'"
    cur2=conn.cursor()
    cur2.execute(sql2)
    pnum=[i[0] for i in cur2]
    pricenumall=0
    for i in pnum:
        pricenumall=i+pricenumall
    sql3="select lat,lon from area where name='"+str(a)+"'"
    cur3=conn.cursor()
    cur3.execute(sql3)
    for k in cur3:
        try:
            thisareadata=[float(k[0]),float(k[1]),pricenumall]
            data.append(thisareadata)
            #print(thisareadata)
        except Exception as err:
            thisareadata=[0,0,0]
            data.append(thisareadata)
hmap=folium.Map()
HeatMap(data).add_to(hmap)
hmap.save('D:/workspace/src/datamining/data/hotmap.html')
