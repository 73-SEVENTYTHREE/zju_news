#-*- coding:utf-8 -*-
import requests        #导入requests包
from bs4 import BeautifulSoup
from mysql import insertData
requests.adapters.DEFAULT_RETRIES = 5 # 增加重连次数
s = requests.session()
s.keep_alive = False  # 关闭多余连接
current_count = 1

def getUrls(url):
    global current_count
    strhtml = s.get(url)  # Get方式获取网页数据
    strhtml.encoding = 'utf-8'
    soup = BeautifulSoup(strhtml.text, 'lxml')
    data = soup.select('.ytitle>a')
    sub_title = soup.select('.n_date')
    for i in range(0, len(data), 1):
        正在爬取第" + str(current_count) + "条新闻...")
        insertData('marx', ['en', data[i].get_text(), sub_title[i].get_text(), ("http://marx.zju.edu.cn" if data[i].get('href')[0] != 'h' else "") + data[i].get('href')])
        current_count = current_count + 1

if __name__ == '__main__':
    for i in range(1, 3):
        getUrls("http://marx.zju.edu.cn/marxen/wews/list" + str(i) + (".htm" if i <= 5 else ".psp"))
