
from selenium import webdriver
import time
from selenium.webdriver.common.by import By

# Hard-coded url
url = "https://torrentgalaxy.mx/torrents.php?c12=1&c14=1&search=devops&lang=0&nox=2#results"

driver = webdriver.Chrome()

# Range is used to generate urls for pages
for n in range(3, 4):
    req_url=url  + str(n)

    driver.get(req_url)
    time.sleep(5)

    links = driver.find_elements(By.XPATH, '//a[@role="button"]')
    # Remove first link, because it's irrelevant
    del links[0]
    for link in links:
        time.sleep(3)
        link.click()
