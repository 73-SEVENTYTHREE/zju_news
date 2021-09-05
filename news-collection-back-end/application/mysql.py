import pymysql
db = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='2569535507Lw', db='zjuNews', charset='utf8')
cursor = db.cursor()

# 传入对应的表和数据
# articleType: 文章类型，一共两类： zh 和 en
# title: 文章标题
# subtitle: 文章副标题
# content: 文章内容
# url: 原文章链接
def insertData(table, data):
    sql = "INSERT INTO " + table + " (articleType, title, subtitle,  url) VALUES (%s, %s, %s, %s)"
    cursor.execute(sql, data)
    db.commit()