INSERT INTO Users (UserID, UserName, UserType, Email, Password, ProfilePicture, OtherUserInfo)
VALUES
(1, 'JohnDoe', 'Guest', 'john.doe@email.com', 'hashed_password', 'profile_pic.jpg', 'Additional info'),
(2, 'Host123', 'Host', 'host123@email.com', 'hashed_password', 'host_pic.jpg', 'Host information');

INSERT INTO Hosts (HostID, UserID, OtherHostInfo)
VALUES
(1, 2, 'Additional host info for Host123');

INSERT INTO Rooms (RoomID, HostID, RoomName, Description, MaxResidents, PricePerNight, HasAC, HasRefrigerator, OtherRoomAttributes)
VALUES
(1, 1, 'Cozy Room', 'A cozy room with a view', 2, 50.00, true, true, 'Additional room attributes');

INSERT INTO Reservations (ReservationID, GuestID, RoomID, CheckInDate, CheckOutDate, TotalPrice, Status)
VALUES
(1, 1, 1, '2023-01-01', '2023-01-05', 200.00, 'Confirmed');

INSERT INTO Reviews (ReviewID, GuestID, RoomID, Rating, ReviewText, DatePosted)
VALUES
(1, 1, 1, 5, 'Great experience!', '2023-01-06');
