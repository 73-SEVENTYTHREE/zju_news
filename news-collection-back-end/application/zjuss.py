import re
import requests
from bs4 import BeautifulSoup as bs
from mysql import insertData

headers = {'User-Agent': 'Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14'}

for i in range(6):
    zh_url = 'https://www.zjuss.cn/通知公告?page=' + str(i + 1)
    html = requests.post(zh_url, headers=headers, verify=False).text
    bf = bs(html, 'html.parser')
    texts = bf.find_all('div', class_='news-list')

    texts = str(texts).replace('\t', '').replace('\n', '').replace('\r', '').replace(' ', '')
    newTexts = texts.split('</span>')[:-1]
    titles = [re.findall(r'<ahref=.*>(.*?)</a>', newText)[0] for newText in newTexts]
    hrefs = ['https://www.zjuss.cn' + href for href in re.findall(r'<ahref="(.*?)">', texts)]
    subtitles = re.findall(r'<spanclass="hidden-xs">(.*?)</span>', texts)

    for title, href, subtitle in zip(titles, hrefs, subtitles):
        insertData('zjuss', ('zh', title, subtitle, href))
