from sqlalchemy import Column, DateTime, ForeignKey, String, Boolean
from sqlalchemy.dialects.postgresql import UUID
from sqlalchemy.orm import relationship

class Users():
    __tablename__ = "Users"

    user_id = Column(UUID(as_uuid=True), primary_key=True)
    created_at = Column(DateTime)
    email = Column(String)
    name = Column(String)
    password = Column(String)

    albums = relationship("AlbumUser", back_populates="user")
    photos = relationship("Photos", back_populates="user")


class AlbumUser():
    __tablename__ = "AlbumUser"

    albumUser_id = Column(UUID(as_uuid=True), primary_key=True)
    created_at = Column(DateTime)
    album_id = Column(UUID(as_uuid=True), ForeignKey('Albums.album_id'))
    user_id = Column(UUID(as_uuid=True), ForeignKey('Users.user_id'))
    userRole_id = Column(UUID(as_uuid=True), ForeignKey('UserRole.userRole_id'))

    user = relationship("User", back_populates="albums")


class Albums():
    __tablename__ = "Albums"

    album_id = Column(UUID(as_uuid=True), primary_key=True)
    title = Column(String)
    event = Column(String)
    isPublic = Column(Boolean)
    created_at = Column(DateTime)
    photo_id = Column(UUID(as_uuid=True), ForeignKey('Photos.photo_id'))


class Photos():
    __tablename__ = "Photos"

    photo_id = Column(UUID(as_uuid=True), primary_key=True)
    created_at = Column(DateTime)
    title = Column(String)
    description = Column(String)
    image_url = Column(String)
    user_id = Column(UUID(as_uuid=True), ForeignKey('Users.user_id'))

    user = relationship("User", back_populates="photos")


class UserRole():
    __tablename__ = "UserRole"

    userRole_id = Column(UUID(as_uuid=True), primary_key=True)
    role = Column(String)
    created_at = Column(DateTime)