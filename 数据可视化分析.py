#数据可视化分析
#折线图/散点图
import matplotlib.pylab as pyl
import numpy as npy
x=[1,2,3,4,8]
y=[5,7,2,1,5]
#plot(x轴数据,y轴数据,展现形式)
#pyl.plot(x,y)
#pyl.show()
#pyl.plot(x,y,'or')
#pyl.show()
'''
c-青色
r-红色
m-品红
g-绿色
b-蓝色
y-黄色
k-黑色
w-白色
'''
'''
- 直线
-- 虚线
-. -.形式
: 细小虚线

'''
#pyl.plot(x,y,'r:')
#pyl.show()
'''
s 方形
* 星形
p 五角形

'''
#pyl.title("show")
#pyl.xlabel("ages")
#pyl.ylabel("temp")
#pyl.xlim(0,20)
#pyl.plot(x,y,'s')
#pyl.show()

#随机数生成
import numpy as npy
#npy.random.random_integers(最小值,最大值,个数)
data=npy.random.random_integers(1,30,1000)

data2=npy.random.normal(5.0,2.0,10000)


#直方图 hist
#pyl.hist(data2)
#pyl.show()

sty=npy.arange(1,30,2)
#pyl.hist(data2,histtype='stepfilled')
#pyl.show()

#子图
#subplot(行,列,当前区域)
pyl.subplot(2,2,1)
pyl.plot(x,y)
pyl.subplot(2,2,2)
x1=[1,4,6,9]
y1=[3,21,21,32]
pyl.plot(x1,y1)
pyl.subplot(2,1,2)
pyl.plot(x1,y1)
pyl.show()


#读取和讯博客的数据，并进行可视化分析
import pandas as pda
import matplotlib.pylab as pyl
import numpy as npy
import pymysql
conn=pymysql.connect(host="127.0.0.1",user="root",passwd="root",db="hexun")
sql="select * from myhexun"
data=pda.read_sql(sql,conn)
dt=data.T
hits=dt.values[3]
com=dt.values[4]
pyl.plot(com,hits,'o')
pyl.show()

