import re
import requests
from bs4 import BeautifulSoup as bs
from mysql import insertData

for i in range(20):
    zh_url = 'http://zibs.intl.zju.edu.cn/news/page/' + str(i + 1)
    html = requests.get(zh_url).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('a', class_='news-list news-top news-top clearfix')
    j = 0
    for text in texts:
        j += 1
        href = re.findall(r'href="(.*?)"', str(text))[0]
        title = re.findall(r'title="(.*?)"', str(text))[0]
        subtitle = re.findall(r'<span>(.*?)</span>', str(text))[0]
        insertData('zibs', ('zh', title, subtitle, href))

for i in range(7):
    en_url = 'http://zibs.intl.zju.edu.cn/eng/news/page/' + str(i + 1)
    html = requests.get(en_url).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('a', class_='news-list news-top news-top clearfix')
    for text in texts:
        href = re.findall(r'href="(.*?)"', str(text))[0]
        title = re.findall(r'title="(.*?)"', str(text))[0]
        subtitle = re.findall(r'<span>(.*?)</span>', str(text))[0]
        insertData('zibs', ('en', title, subtitle, href))
