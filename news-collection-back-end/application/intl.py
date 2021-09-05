import re
import requests
from bs4 import BeautifulSoup as bs
from mysql import insertData

for i in range(36):
    zh_url = 'https://www.intl.zju.edu.cn/zh-hans/news?page=' + str(i)
    html = requests.get(zh_url).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('div', class_='views-field views-field-php')[3:]
    spans = bf.find_all('span', class_='date-display-single')

    for text, span in zip(texts, spans):
        href = 'https://www.intl.zju.edu.cn' + re.findall(r'href="(.*?)"', str(text))[0]
        title = re.findall(r'<a href=".*" target="_blank">(.*?)</a>', str(text))[0]
        subtitle = re.findall(r'<span class="date-display-single">(.*?)</span>', str(span))[0]
        insertData('intl', ('zh', title, subtitle, href))

for i in range(36):
    zh_url = 'https://www.intl.zju.edu.cn/news?page=' + str(i)
    html = requests.get(zh_url).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('div', class_='views-field views-field-php')[3:]
    spans = bf.find_all('span', class_='date-display-single')

    for text, span in zip(texts, spans):
        href = 'https://www.intl.zju.edu.cn' + re.findall(r'href="(.*?)"', str(text))[0]
        title = re.findall(r'<a href=".*" target="_blank">(.*?)</a>', str(text))[0]
        subtitle = re.findall(r'<span class="date-display-single">(.*?)</span>', str(span))[0]
        insertData('intl', ('en', title, subtitle, href))
