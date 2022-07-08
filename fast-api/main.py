from typing import Union

from selenium import webdriver
import time
from selenium.webdriver.common.by import By

from fastapi import FastAPI


import time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager

# Coockie shit
import pickle

from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC



app = FastAPI()


def go_torr(query):
    options = webdriver.ChromeOptions()
    options.add_argument("--start-maximized")
    options.add_experimental_option("detach", True)
    driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=options)
    url = "https://www.google.com/search?q=" + query
    driver.get(url)


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}


@app.get("/pussy/{query}")
def read_root(query: str, q: Union[str, None] = None):
    go_torr(query)
    print("pussy going here")
    return {"Hello": "World"}


