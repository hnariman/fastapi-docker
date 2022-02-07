# main.py
from fastapi import FastAPI

app = FastAPI()

@app.get('/')
async def index():
    return {"message":"HELLO"}

@app.get('/{name}')
async def revers(name):
    return name[::-1].upper()
