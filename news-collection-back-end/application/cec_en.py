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
    data = soup.select('.info >h3> a')
    sub_title = soup.select('small')
    for i in range(1, len(data), 2):
        print("正在爬取第" + str(current_count) + "条新闻...")
        insertData('cec', ['en', data[i].get('title'), sub_title[int((i - 1)/2)].get_text(), "http://www.cec.zju.edu.cn" + data[i].get('href')])
        current_count = current_count + 1

if __name__ == '__main__':
    getUrls("http://www.cec.zju.edu.cn/cecen/37526/list.htm")
