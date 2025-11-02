USE salat1;


INSERT INTO locations (City, Country, TimeZone) VALUES
('Helsinki', 'Finland', '(UTC+2)'),
('Alanya', 'Turkey', '(UTC+3)'),
('London', 'UK', '(UTC)'),
('Toronto', 'Canada', '(UTC+4)'),
('Paris', 'France', '(UTC+1)');


INSERT INTO users (UserName, UserPassword, Email, Age, LocationID) VALUES
('Ali_Al', 'password123', 'ali.al@gmail.com', '25', 1),
('Manal1', 'password123', 'manallia@outlook.com', '55', 4),
('Emmuuu', 'password123', 'eme@email.fi', '34', 2),
('tibuli_al', 'password123', 'tiba.al@gmail.com', '18', 5),
('Tabarak_150', 'password123', 'tabarak.ali@yahoo.com', '15', 3);


INSERT INTO prayertimes (PrayerTime, PrayerType, Dates) VALUES
('03:23:00', 'Fajr', '2024-03-27'),
('12:27:00', 'Dhuhr', '2024-03-27'),
('15:47:00', 'Asr', '2024-03-27'),
('18:58:00', 'Maghrib', '2024-03-27'),
('21:20:00', 'Isha', '2024-03-27');


INSERT INTO notifications (UserID, IsNotificationSet, Dates, PrayerTimeID) VALUES
(1, 1, '2024-03-27', 1),
(2, 0, '2024-03-27', 2),
(3, 1, '2024-03-27', 3);


INSERT INTO sunnahprayers (UserID, PrayerTimeID, ReminderSet, Dates) VALUES
(2, 3, 1, '2024-03-27'),
(4, 3, 0, '2024-03-27'),
(1, 5, 1, '2024-03-27');

