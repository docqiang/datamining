import folium
from folium.plugins import HeatMap
import pymysql
conn=pymysql.connect(host="127.0.0.1",user="root",passwd="root",db="foods")
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
'''
数据格式
[[lat,long,权重],
[lat,long,权重],
[]]

'''
hmap=folium.Map()
HeatMap(data).add_to(hmap)
hmap.save('D:/Python35/hotmap.html')
