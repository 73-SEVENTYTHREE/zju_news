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
    strhtml.encoding = 'GBK'
    soup = BeautifulSoup(strhtml.text, 'lxml')
    data = soup.select('#arthd>li>a')
    sub_title = soup.select('.art-date')
    for i in range(0, len(data), 1):
        print("正在爬取第" + str(current_count) + "条新闻...")
        insertData('caefs', ['zh', data[i].get_text(), sub_title[i].get_text(), ("http://www.caefs.zju.edu.cn/chinese/" if data[i].get('href')[0] != 'h' else "") + data[i].get('href')])
        current_count = current_count + 1

if __name__ == '__main__':
    for i in range(1, 51):
        getUrls("http://www.caefs.zju.edu.cn/chinese/redir.php?catalog_id=20" + ("" if i == 0 else ("&page=" + str(i))))
