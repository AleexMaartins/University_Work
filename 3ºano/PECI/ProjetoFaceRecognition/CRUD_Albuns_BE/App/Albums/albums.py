# from dotenv import load_dotenv
# load_dotenv()

# import os
# from supabase import create_client

# #need to put this url and key in the .env file
# url = "https://doannlywuiiledkkloeh.supabase.co"
# key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRvYW5ubHl3dWlpbGVka2tsb2VoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc5MjkyODgsImV4cCI6MjAyMzUwNTI4OH0.MFQzty4H0b3PBhh434_i2-z6rLQRXqCMfAsljBuqHAc"
# supabase = create_client(url, key)

# # data = supabase.table("Albums").select("*").execute()
# # print(data ,"\n")

# # supabase.table("Albums").delete().eq("id", "testid1").execute() # delete the album with id "testid1"
# # supabase.table("Albums").insert({"id" : "testid1","god": "testgod1", "title":"testtitle1"}).execute() # insert the album with id "testid1"

# # data = supabase.table("Album").select("*").execute()
# # print("\n", data)

# from fastapi import FastAPI
# from ..models import Album  
# app = FastAPI()


# @app.post("/")
# async def create_album(album: Album):
#     response = supabase.table("Albums").insert({"id" : "testid1","god": "testgod1", "title":"testtitle1"}).execute() # insert the album with id "testid1"
#     return response

# async def read_albums():
#     data = supabase.table("Albums").select("*").execute()
#     print("\n", data)
#     return data

