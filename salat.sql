-- Luodaan tietokanta
CREATE DATABASE IF NOT EXISTS salat1;
USE salat1;

-- Taulu: locations
CREATE TABLE IF NOT EXISTS locations (
    LocationID INT(11) NOT NULL AUTO_INCREMENT,
    City VARCHAR(100) DEFAULT NULL,
    Country VARCHAR(100) DEFAULT NULL,
    TimeZone VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (LocationID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Taulu: users
CREATE TABLE IF NOT EXISTS users (
    UserID INT(11) NOT NULL AUTO_INCREMENT,
    UserName VARCHAR(100) DEFAULT NULL,
    UserPassword VARCHAR(100) DEFAULT NULL,
    Email VARCHAR(100) DEFAULT NULL,
    Age VARCHAR(20) DEFAULT NULL,
    LocationID INT(11) DEFAULT NULL,
    PRIMARY KEY (UserID),
    KEY LocationID (LocationID),
    CONSTRAINT users_ibfk_1 FOREIGN KEY (LocationID) REFERENCES locations (LocationID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Taulu: prayertimes
CREATE TABLE IF NOT EXISTS prayertimes (
    PrayerTimeID INT(11) NOT NULL AUTO_INCREMENT,
    PrayerTime TIME DEFAULT NULL,
    PrayerType VARCHAR(100) DEFAULT NULL,
    Dates DATE DEFAULT NULL,
    PRIMARY KEY (PrayerTimeID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Taulu: notifications
CREATE TABLE IF NOT EXISTS notifications (
    NotificationID INT(11) NOT NULL AUTO_INCREMENT,
    UserID INT(11) DEFAULT NULL,
    IsNotificationSet TINYINT(1) DEFAULT NULL,
    Dates DATE DEFAULT NULL,
    PrayerTimeID INT(11) DEFAULT NULL,
    PRIMARY KEY (NotificationID),
    KEY UserID (UserID),
    KEY PrayerTimeID (PrayerTimeID),
    CONSTRAINT notifications_ibfk_1 FOREIGN KEY (UserID) REFERENCES users (UserID),
    CONSTRAINT notifications_ibfk_2 FOREIGN KEY (PrayerTimeID) REFERENCES prayertimes (PrayerTimeID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Taulu: sunnahprayers
CREATE TABLE IF NOT EXISTS sunnahprayers (
    SunnahPrayerID INT(11) NOT NULL AUTO_INCREMENT,
    UserID INT(11) DEFAULT NULL,
    PrayerTimeID INT(11) DEFAULT NULL,
    ReminderSet TINYINT(1) DEFAULT NULL,
    Dates DATE DEFAULT NULL,
    PRIMARY KEY (SunnahPrayerID),
    KEY UserID (UserID),
    KEY PrayerTimeID (PrayerTimeID),
    CONSTRAINT sunnahprayers_ibfk_1 FOREIGN KEY (UserID) REFERENCES users (UserID),
    CONSTRAINT sunnahprayers_ibfk_2 FOREIGN KEY (PrayerTimeID) REFERENCES prayertimes (PrayerTimeID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
