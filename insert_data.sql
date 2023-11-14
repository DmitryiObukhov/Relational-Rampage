INSERT INTO Users (UserName, UserType, Email, Password, ProfilePicture)
VALUES
('JohnDoe', 'Guest', 'john.doe@email.com', 'hashed_password', 'https://www.freepik.com/free-psd/3d-illustration-person-with-sunglasses_27470334.htm#query=avatar&position=0&from_view=keyword&track=sph'),
('Host123', 'Host', 'host123@email.com', 'hashed_password', 'https://www.freepik.com/free-psd/3d-illustration-person-with-sunglasses_27470334.htm#query=avatar&position=0&from_view=keyword&track=sph');


INSERT INTO Hosts (UserID, OtherHostInfo)
VALUES
(LAST_INSERT_ID(), 'Additional host info for Host123');


INSERT INTO Rooms (HostID, RoomName, Description, MaxResidents, PricePerNight, HasAC, HasRefrigerator, OtherRoomAttributes)
VALUES
(LAST_INSERT_ID(), 'Cozy Room', 'A cozy room with a view', 2, 50.00, true, true, 'Additional room attributes');


INSERT INTO Reservations (GuestID, RoomID, CheckInDate, CheckOutDate, TotalPrice, Status)
VALUES
(LAST_INSERT_ID(), LAST_INSERT_ID(), '2023-01-01', '2023-01-05', 200.00, 'Confirmed');


INSERT INTO Reviews (GuestID, RoomID, Rating, ReviewText, DatePosted)
VALUES
(LAST_INSERT_ID(), LAST_INSERT_ID(), 5, 'Great experience!', CURRENT_TIMESTAMP);

