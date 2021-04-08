import pymongo
from pymongo import MongoClient

myclient = MongoClient('mongodb://localhost:27017/?readPreference=primary&appname=MongoDB%20Compass&ssl=false')
db = myclient["CLS"]
mycol = db["Std"]

post = {"_id":0, "name":"test"}

mycol.insert_one(post)


