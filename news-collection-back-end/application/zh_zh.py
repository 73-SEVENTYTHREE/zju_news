#-*- coding:GBK -*-
import requests        #导入requests包
from bs4 import BeautifulSoup
from mysql import insertData
requests.adapters.DEFAULT_RETRIES = 5 # 增加重连次数

def getUrls(url):
    s = requests.session()
    s.keep_alive = False  # 关闭多余连接
    strhtml = s.get(url)  # Get方式获取网页数据
    soup = BeautifulSoup(strhtml.text, 'lxml')
    data = soup.select('.news_title > a')
    result = []
    for i in range(0, len(data), 1):
        if data[i].get('href')[0] != 'h':
            result.append(data[i].get('href'))
    return result

current_count = 1

def getNews(base, postfixs):
    global current_count
    for postfix in postfixs:
        print("正在爬取第" + str(current_count) + "条新闻...")
        strhtml = requests.get(base + postfix)
        strhtml.encoding = 'GBK'
        soup = BeautifulSoup(strhtml.text, 'lxml')
        title = soup.select('h1')[0].get_text()
        sub_title = soup.select('.arti_metas>span')
        text_arr = []
        for i in range(0, len(sub_title) - 1):
            text_arr.append(sub_title[i].get_text())
        subtitle = ''.join(text_arr)
        insertData('ch', ['zh', title, subtitle, base+postfix])
        current_count = current_count + 1


if __name__ == '__main__':
    for i in range(1, 81):
        urls = getUrls("http://www.ch.zju.edu.cn/22566/list" + str(i) + (".htm" if i <= 5 else ".psp"))
        base = 'http://www.ch.zju.edu.cn'
        getNews(base, urls)
