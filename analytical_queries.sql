SELECT
    U.UserID,
    U.UserName,
    COUNT(R.ReservationID) AS BookingCount
FROM
    Users U
JOIN
    Reservations R ON U.UserID = R.GuestID
GROUP BY
    U.UserID, U.UserName
ORDER BY
    BookingCount DESC
LIMIT 1;
