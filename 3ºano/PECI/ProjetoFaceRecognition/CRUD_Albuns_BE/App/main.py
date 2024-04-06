from models import *
from dotenv import load_dotenv
from fastapi import FastAPI
from supabase import create_client
from datetime import datetime
app = FastAPI()

# Codigo do Alex ----------------------------------------------------------------------------
from fastapi import Form
@app.get("/")
def read_root():
    return {"Hello": ""}


load_dotenv()

# need to put this url and key in the .env file
url = "https://axnzfqkjqdfblkpdbapt.supabase.co"
key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF4bnpmcWtqcWRmYmxrcGRiYXB0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDgyMjE0ODksImV4cCI6MjAyMzc5NzQ4OX0.6v29JYil6XyMaBC8Uo4YzfKaAPsQSieNwmsG3bRdUd0"
supabase = create_client(url, key)

app = FastAPI()

@app.post("/user/create/{email},{name},{password}")
async def create_user(email: str, name: str, password: str):
    current_time = datetime.now().isoformat()
    supabase.table("Users").insert({"email": email, "name": name, "password": password, "created_at": current_time}).execute()
    return "User created"

@app.get("/user/readUsers")
async def read_all_users():
    data = supabase.table("Users").select("*").execute()
    return data

@app.post("/albums/create/{title},{event},{isPublic}")
async def create_album(title: str, event: str, isPublic: bool):
    current_time = datetime.now().isoformat() 
    
    response = supabase.table("Albums").insert({"title": title, "event":event, "isPublic": isPublic, "created_at": current_time}).execute() # create the album
    new_album_id = response.data[0]['album_id'] # get the album id
    
    supabase.table("AlbumUser").insert({ "album_id": new_album_id, "user_id":"17af2e9b-35fe-4b36-8d40-41d394084de1", "userRole_id": "3c2dfa74-4ceb-49eb-aa55-9c245758b75a"}).execute() # create the Album to God relationship
    return "Album created"

@app.get("/albums/readAlbums")
async def read_all_albums():
    data = supabase.table("Albums").select("*").execute()
    return data

@app.get("/albums/readUsersOfAlbum")
async def read_users_of_album(album_id: str):
    data = supabase.table("AlbumUser").select("*").eq("album_id", album_id).execute()
    return data

@app.get("/albums/read/{albumId}")
async def read_this_album(albumId: str):
    data = supabase.table("Albums").select("*").eq("album_id", albumId).execute()
    return data

@app.put("/albums/update/{albumId}")
async def update_album(albumId: str, newTitle: str, newEvent: str, newIsPublic: bool):
    supabase.table("Albums").update({"title": newTitle, "event": newEvent,"isPublic": newIsPublic}).eq("album_id", albumId).execute()
    return "Album updated, new title is " + newTitle + ", new event is " + newEvent + ", and 'isPublic' is " + str(newIsPublic) + "."

@app.put("/albums/setRole/{user_id},{album_id},{userRole_id}")
async def set_role(user_id: str, album_id: str, userRole_id: str):
    if not supabase.table("AlbumUser").select("*").eq("user_id", user_id).eq("album_id", album_id).eq("userRole_id", userRole_id).execute().data:
        supabase.table("AlbumUser").insert({ "album_id": album_id, "user_id": user_id, "userRole_id": userRole_id}).execute()
    return "Role updated"

@app.put("/albums/delete/{albumId}")
async def delete_album(albumId: str):
    supabase.table("AlbumUser").delete().eq("album_id", albumId).execute()
    supabase.table("Albums").delete().eq("album_id", albumId).execute()
    return "Album deleted"