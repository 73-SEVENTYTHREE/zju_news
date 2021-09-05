import re
import requests
from bs4 import BeautifulSoup as bs
from mysql import insertData

for i in range(37):
    zh_url = 'https://zjui.intl.zju.edu.cn/news?page=' + str(i)
    html = requests.get(zh_url, verify=False).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('a', class_='f-cb')

    for text in texts:
        href = 'https://zjui.intl.zju.edu.cn' + re.findall(r'href="(.*?)"', str(text))[0]
        title = re.findall(r'<div class="tits">(.*?)</div>', str(text))[0]
        subtitle = re.findall(r'<div class="time">(.*?)</div>', str(text))[0]
        insertData('zjui', ('zh', title, subtitle, href))

for i in range(31):
    en_url = 'https://zjui.intl.zju.edu.cn/en/news?page=' + str(i)
    html = requests.get(en_url, verify=False).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('a', class_='f-cb')

    for text in texts:
        href = 'https://zjui.intl.zju.edu.cn/en' + re.findall(r'href="(.*?)"', str(text))[0]
        title = re.findall(r'<div class="tits">(.*?)</div>', str(text))[0]
        subtitle = re.findall(r'<div class="time">(.*?)</div>', str(text))[0]
        insertData('zjui', ('en', title, subtitle, href))
