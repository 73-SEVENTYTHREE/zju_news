#-*- coding:utf-8 -*-
import requests        #导入requests包
from bs4 import BeautifulSoup
from mysql import insertData
import time
requests.adapters.DEFAULT_RETRIES = 5 # 增加重连次数
s = requests.session()
s.keep_alive = False  # 关闭多余连接
current_count = 1

def getUrls(url):
    global current_count
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36 QIHU 360SE'
    }
    strhtml = s.get(url, headers=headers)  # Get方式获取网页数据
    strhtml.encoding = 'utf-8'
    soup = BeautifulSoup(strhtml.text, 'lxml')
    data = soup.select('.tx-z>a')
    sub_title = soup.select('.list-time')
    for i in range(0, len(data), 1):
        正在爬取第" + str(current_count) + "条新闻...")
        insertData('z2hospital', ['zh', data[i].get_text(), sub_title[i].get_text(), ("http://www.z2hospital.com" if data[i].get('href')[0] != 'h' else "") + data[i].get('href')])
        time.sleep(1)
        current_count = current_count + 1

if __name__ == '__main__':
    for i in range(1, 202):
        getUrls("http://www.z2hospital.com/channels/599_" + str(i) + ".html")
