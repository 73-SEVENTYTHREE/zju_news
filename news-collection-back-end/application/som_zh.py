#-*- coding:utf-8 -*-
import requests        #导入requests包
from bs4 import BeautifulSoup
from mysql import insertData
requests.adapters.DEFAULT_RETRIES = 5 # 增加重连次数

def getUrls(url):
    s = requests.session()
    s.keep_alive = False  # 关闭多余连接
    strhtml = s.get(url)  # Get方式获取网页数据
    soup = BeautifulSoup(strhtml.text, 'lxml')
    data = soup.select('table > tr > td > ul > li > h3 > a')
    result = []
    for i in range(0, len(data), 2):
        if data[i].get('href')[0] != 'h':
            result.append(data[i].get('href'))
    return result

current_count = 1

def getNews(base, postfixs):
    global current_count
    for postfix in postfixs:
        print("正在爬取第" + str(current_count) + "条新闻...")
        strhtml = requests.get(base + postfix)
        strhtml.encoding = 'utf-8'
        soup = BeautifulSoup(strhtml.text, 'lxml')
        title = soup.select('.xiangqing_top>h3')[0].get_text()
        sub_title = soup.select('.xiangqing_top>p')[1].get_text()
        insertData('som', ['zh', title, sub_title, base+postfix])
        current_count = current_count + 1


if __name__ == '__main__':
    for i in range(1, 149):
        urls = getUrls("http://www.som.zju.edu.cn/34055/list" + str(i) + (".htm" if i <= 5 else ".psp"))
        manage = 'http://www.som.zju.edu.cn'
        getNews(manage, urls)
