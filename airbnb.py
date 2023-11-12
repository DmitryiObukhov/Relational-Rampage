data_model = """
[Users]
- UserID (PK)
- UserName
- UserType (Host or Guest)
- Email
- Password (hashed)
- Profile Picture
- Other User Information

[Hosts]
- HostID (PK, FK referencing Users.UserID)
- Other Host Information

[Rooms]
- RoomID (PK)
- HostID (FK referencing Hosts.HostID)
- RoomName
- Description
- MaxResidents
- PricePerNight
- HasAC (Boolean)
- HasRefrigerator (Boolean)
- Other Room Attributes

[Reservations]
- ReservationID (PK)
- GuestID (FK referencing Users.UserID)
- RoomID (FK referencing Rooms.RoomID)
- CheckInDate
- CheckOutDate
- TotalPrice
- Status

[Reviews]
- ReviewID (PK)
- GuestID (FK referencing Users.UserID)
- RoomID (FK referencing Rooms.RoomID)
- Rating
- ReviewText
- DatePosted"""
print(data_model)
