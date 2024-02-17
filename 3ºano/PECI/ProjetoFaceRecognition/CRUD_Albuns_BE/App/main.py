from fastapi import FastAPI, UploadFile, File, HTTPException
import boto3
from io import BytesIO

app = FastAPI()

# S3 configuration
s3_bucket_name = 'photosbucketfacefindr'
s3_client = boto3.client('s3', region_name='eu-west-3', aws_access_key_id='AKIA4MTWMRVFB6SWUGUZ', aws_secret_access_key='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')

# endpoint to upload a photo to S3
@app.post("/photos/")
async def upload_photo(file: UploadFile = File(...)):
    try:
        # upload file to S3
        file_bytes = await file.read()
        s3_client.put_object(Bucket=s3_bucket_name, Key=file.filename, Body=file_bytes)
        
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
        s3_client.put_object(Bucket=s3_bucket_name, Key=photo_id, Body=file_bytes)
        
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

@app.get("/")
def read_root():
    return {"Hello": ""}

from dotenv import load_dotenv
load_dotenv()

import os
from supabase import create_client

#need to put this url and key in the .env file
url = "https://doannlywuiiledkkloeh.supabase.co"
key = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRvYW5ubHl3dWlpbGVka2tsb2VoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc5MjkyODgsImV4cCI6MjAyMzUwNTI4OH0.MFQzty4H0b3PBhh434_i2-z6rLQRXqCMfAsljBuqHAc"
supabase = create_client(url, key)

# data = supabase.table("Album").select("*").execute()
# print(data ,"\n")

# supabase.table("Album").delete().eq("id", "testid1").execute() # delete the album with id "testid1"
# supabase.table("Album").insert({"id" : "testid1","god": "testgod1", "title":"testtitle1"}).execute() # insert the album with id "testid1"

# data = supabase.table("Album").select("*").execute()
# print("\n", data)

from fastapi import FastAPI
from models import Album
app = FastAPI()


@app.post("/albums/create")
async def create_album(album: Album):
    response = supabase.table("Albums").insert({"god": "testgod1", "title":"testtitle1"}).execute() # insert the album with id "testid1"
    return response

@app.get("/albums/read")
async def read_albums():
    data = supabase.table("Albums").select("*").execute()
    print("\n", data)
    return data

@app.put("/albums/delete")
async def delete_album():
    response = supabase.table("Albums").delete().eq("id", "testid1").execute()
#--------------------------------------------------------------------------------------------