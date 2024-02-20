from pydantic import BaseModel
from typing import List
from enum import Enum

class Role(str, Enum): # there are many roles
    PHOTOGRAPHER = "photographer"
    SUPERVISOR = "supervisor"
    PARTICIPANT = "participant"
    OWNER = "owner"
    GOD = "god"

class User(BaseModel): # there are many users and can have various roles
    id: str
    name: str
    roles: List[Role] = []

class Photo(BaseModel): # there are many Photos, 1 Album and 1 or many Photographers
    id: str
    url: str                        # URL of the photo (can be a link to the photo or a path to the photo)
    title: str                      
    photographer: User              # User who uploaded the photo (Photographer/God/Supervisor)
    hide : bool = False             # if True, ONLY Participants see the photos, even if the Album is public. Can be set to True/False by God/Owner
    
class Album(BaseModel): # there is 1 Album, 1 God, 1 or many Photographers(can become Supervisors) and 1 or many Participants(can become Album Owners) 
    id: str
    title: str
    god : User                      # User who creates the Album (only 1 God per album)
    owner: List[User] = []          # can be given by God to 1 or more Participants
    supervisor: List[User] = []     # can be given by God to 1 or more Photographers
    photographer: List[User] = []   # can be given by God/Supervisor to a new User
    participant: List[User] = []    # can be given by God/Supervisor to a new User
    photos: List[Photo] = []        # can be added by God/Supervisor/Photographer
    public : bool = False           # if True, then all Users can see the Albums (including Unregistered Users)
    
    
    