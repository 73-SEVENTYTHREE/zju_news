# -*- coding:GBK -*-
import requests
from bs4 import BeautifulSoup
from mysql import insertData
requests.adapters.DEFAULT_RETRIES = 5 # 增加重连次数

if __name__ == '__main__':
    current_id = 1
    current_count = 1
    s = requests.session()
    s.keep_alive = False  # 关闭多余连接
    for i in range(current_id, 3000, 1):
        print("正在爬取id为" + str(i) + "的新闻...")
        url = "http://en.som.zju.edu.cn/school/articleInfo.aspx?id=" + str(i)
        html = s.get(url)
        soup = BeautifulSoup(html.text, 'lxml')
        if len(soup.select('.newsinfo-a')) == 0:
            print("当前新闻不存在...")
            continue
        title = soup.select('.newsinfo-a')[0].get_text()
        time = soup.select('.newsinfo-b')[0].get_text()
        insertData('som', ['en', title, time, url])
        current_count = current_count + 1
