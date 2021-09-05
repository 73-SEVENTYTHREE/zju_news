import re
import requests
from bs4 import BeautifulSoup as bs
from mysql import insertData

for i in range(88):
    zh_url = 'http://www.zju4h.com/yyxw/list_18.aspx?page=' + str(i + 1)
    html = requests.get(zh_url).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('h5', class_='h5')
    spans = bf.find_all('span', class_='time')

    for text, span in zip(texts, spans):
        href = 'http://www.zju4h.com' + re.findall(r'href="(.*?)"', str(text))[0]
        title = re.findall(r'<a href=".*">(.*?)</a>', str(text))[0]
        subtitle = re.findall(r'<span class="time">(.*?)</span>', str(span))[0]
        insertData('zju4h', ('zh', title, subtitle, href))
