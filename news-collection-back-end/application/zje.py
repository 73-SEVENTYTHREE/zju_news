import re
import time
import requests
from bs4 import BeautifulSoup as bs
from mysql import insertData


for i in range(14):
    zh_url = 'http://zje.zju.edu.cn/zje/about_us/news?page=' + str(i + 1) + '&lang=cn'
    html = requests.get(zh_url, verify=False).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('h2', class_='')[1:]
    spans = bf.find_all('span', class_='formatter_dt')

    for text, span in zip(texts, spans):
        href = 'http://zje.zju.edu.cn' + re.findall(r'href="(.*?)"', str(text))[0] + '&lang=cn'
        title = list(filter(None, re.split('\t|\r|\n', str(text))))[2]
        timeStamp = re.findall(r'<span class="formatter_dt">(.*?)</span>', str(span))[0]
        timeArray = time.localtime(int(timeStamp) / 1000)
        subtitle = time.strftime("%Y-%m-%d", timeArray)
        insertData('zje', ('zh', title, subtitle, href))

for i in range(14):
    en_url = 'https://zjui.intl.zju.edu.cn/en/news?page=' + str(i + 1) + '&lang=en'
    html = requests.get(en_url, verify=False).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('h2', class_='')[1:]
    spans = bf.find_all('span', class_='formatter_dt')

    for text, span in zip(texts, spans):
        href = 'http://zje.zju.edu.cn' + re.findall(r'href="(.*?)"', str(text))[0] + '&lang=en'
        title = list(filter(None, re.split('\t|\r|\n', str(text))))[2]
        timeStamp = re.findall(r'<span class="formatter_dt">(.*?)</span>', str(span))[0]
        timeArray = time.localtime(int(timeStamp) / 1000)
        subtitle = time.strftime("%Y-%m-%d", timeArray)
        insertData('zje', ('en', title, subtitle, href))
