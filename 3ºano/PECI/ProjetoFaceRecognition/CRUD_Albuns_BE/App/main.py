from dotenv import load_dotenv
from models import Album
from fastapi import FastAPI
from supabase import create_client
import os
from fastapi import FastAPI, UploadFile, File, HTTPException
import boto3
from io import BytesIO

app = FastAPI()

# S3 configuration
s3_bucket_name = 'photosbucketfacefindr'
s3_client = boto3.client('s3', region_name='eu-west-3', aws_access_key_id='AKIA4MTWMRVFB6SWUGUZ',
                         aws_secret_access_key='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')

# endpoint to upload a photo to S3


@app.post("/photos/")
async def upload_photo(file: UploadFile = File(...)):
    try:
        # upload file to S3
        file_bytes = await file.read()
        s3_client.put_object(Bucket=s3_bucket_name,
                             Key=file.filename, Body=file_bytes)

        return {"message": "Photo uploaded successfully"}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

# endpoint to read all photos from S3


@app.get("/photos/")
async def read_all_photos():
    try:
        response = s3_client.list_objects(Bucket=s3_bucket_name)
        photos = [obj['Key'] for obj in response.get('Contents', [])]

        return photos
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

# endpoint to read a specific photo from S3


@app.get("/photos/{photo_id}")
async def read_photo(photo_id: str):
    try:
        response = s3_client.get_object(Bucket=s3_bucket_name, Key=photo_id)
        photo_bytes = response['Body'].read()

        return photo_bytes
    except Exception as e:
        raise HTTPException(status_code=404, detail="Photo not found")

# endpoint to update a photo file in S3


@app.put("/photos/{photo_id}")
async def update_photo(photo_id: str, file: UploadFile = File(...)):
    try:
        # upload file to S3
        file_bytes = await file.read()
        s3_client.put_object(Bucket=s3_bucket_name,
                             Key=photo_id, Body=file_bytes)

        return {"message": "Photo updated successfully"}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

# endpoint to delete a photo from S3


@app.delete("/photos/{photo_id}")
async def delete_photo(photo_id: str):
    try:
        s3_client.delete_object(Bucket=s3_bucket_name, Key=photo_id)

        return {"message": "Photo deleted successfully"}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


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

# data = supabase.table("Album").select("*").execute()
# print(data ,"\n")

# supabase.table("Album").delete().eq("id", "testid1").execute() # delete the album with id "testid1"
# supabase.table("Album").insert({"id" : "testid1","god": "testgod1", "title":"testtitle1"}).execute() # insert the album with id "testid1"

# data = supabase.table("Album").select("*").execute()
# print("\n", data)

app = FastAPI()


@app.post("/albums/create/{godID},{albumTitle}")
async def create_album(godID: str, albumTitle: str):
    # insert the album with id "testid1"
    supabase.table("Albums").insert(
        {"god": godID, "title": albumTitle}).execute()
    return "Album created"


@app.get("/albums/read")
async def read_albums():
    data = supabase.table("Albums").select("*").execute()
    print("\n", data)
    return data


@app.put("/albums/delete/{albumId}")
async def delete_album(albumId: str):
    supabase.table("Albums").delete().eq("id", albumId).execute()
    return "Album deleted"


@app.put("/albums/update/{albumId}")
async def update_album(albumId: str, newTitle: str):
    supabase.table("Albums").update(
        {"title": newTitle}).eq("id", albumId).execute()
    return "Album updated, new title is " + newTitle + "."

#inserir function aqui que faz o que add e promote user fazem

@app.put("/albums/addUser/{albumId}")
async def update_album(albumId: str, newUserID: str, role: str):
    # try:
    #     user_response = supabase.table("User").select("id").eq("id", newUserID).execute()
    #     if user_response.error or not user_response.data:
    #         raise Exception
    # except Exception as e:
    #     raise HTTPException(status_code=404, detail="User not found")
    
    try:
        response = supabase.table("Albums").select(role).eq("id", albumId).execute()
    except Exception as e:
        raise HTTPException(status_code=404, detail="Album not found")
    
    role = role.lower()
    if role not in ["photographer", "participant"]:
        raise HTTPException(status_code=404, detail="Role not found")
    
    

    updated_users = response.data[0][role]

    if updated_users is None:
        updated_users = []

    updated_users.append(newUserID)

    # Update the album in the database
    response = supabase.table("Albums").update({role: updated_users}).eq("id", albumId).execute()

    return "User added to album with role " + role + "."

@app.put("/albums/promoteUser/{albumId}")
async def update_album(albumId: str, newUserID: str, role: str):

    role = role.lower()
    if role not in ["supervisor", "owner"]:
        raise HTTPException(status_code=404, detail="Role not found")
    
    try:
        response = supabase.table("Albums").select(role).eq("id", albumId).execute()
    except Exception as e:
        raise HTTPException(status_code=404, detail="Album not found")

    updated_users = response.data[0][role]

    if updated_users is None:
        updated_users = []

    updated_users.append(newUserID)

    # Update the album in the database
    response = supabase.table("Albums").update({role: updated_users}).eq("id", albumId).execute()

    return "User added to album with role " + role + "."
# --------------------------------------------------------------------------------------------
