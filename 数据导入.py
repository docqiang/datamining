#数据的导入
import pandas as pda
#csv
c=pda.read_csv("C:/Users/me/Desktop/数据/hexun.csv")
#excel
d=pda.read_excel("C:/Users/me/Desktop/数据/abc.xls")
#sql
import pymysql
#中文编码问题
#-----
conn=pymysql.connect(host="127.0.0.1",user="root",passwd="root",db="hexun")
sql="select * from myhexun"
e=pda.read_sql(sql,conn)
#html
f=pda.read_html("C:/Users/me/Desktop/数据/abc.html")


#txt
h=pda.read_table("C:/Users/me/Desktop/数据/abc.txt")
