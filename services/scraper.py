import urllib.request
import re

# Scrapes and parses police department info from web


def scrape_page(url):
    req = urllib.request.Request(url)
    resp = urllib.request.urlopen(req)
    return resp.read()


county_name = "Washington".lower()

respData = scrape_page(
    "https://en.wikipedia.org/wiki/List_of_law_enforcement_agencies_in_New_York")
departments = re.findall(r'<h2>(.*?)</div>', str(respData))
county_agencies = re.findall(r'<li>(.*?)</li>', str(departments[3]))
munic_agencies = re.findall(r'<li>(.*?)</li>', str(departments[4]))

for agency in county_agencies:
    x = agency.find("<")
    if x != -1:
        if x == 0:
            y = agency.find("<li>")
            agency = agency[y:]
            x = agency.find("title=\"")+6
            agency = agency[x:]
            x = agency.find(">")
        agency = agency[0:x]
    agency = agency.lower()

for agency in munic_agencies:
    x = agency.find("<")
    if x != -1:
        if x == 0:
            y = agency.find("title = \"")
            agency = agency[y:]
            x = agency.find("<")
        agency = agency[0:x]
    agency = agency.lower()

rData = scrape_page(
    "https://geographic.org/streetview/usa/ny/" + county_name + "/index.html")

cities = re.findall(
    r'<li><a href="(.*?)" alt ="(.*?)">(.*?)</a></li>', str(rData))

for i in range(len(cities)):
    cities[i] = cities[i][1]

for city in cities:
    for dep in county_agencies:
        if city in dep:
            print(dep)
    for dep in munic_agencies:
        if city in dep:
            print(dep)
