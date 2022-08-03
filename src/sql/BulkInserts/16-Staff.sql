BULK INSERT sales.staffs
FROM 'C:\SP\Notes, Practicals etc\AY 2223\DENG\Assignment2\src\txt\staff.txt' -- Replace this with your own path
WITH
    (
        FIELDTERMINATOR = ';',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    )

-- If that does not return "10 rows affected", use this
/*
    INSERT INTO sales.staffs VALUES
    (3031, 'Fabiola', 'Jackson', 'fabiola.jackson@bikes.shop', '(831) 555-5554', 1, 'ST1', NULL),
    (30310, 'Bernardine', 'Houston', 'bernardine.houston@bikes.shop', '(972) 530-5557', 1, 'ST3', 3037),
    (3032, 'Mireya', 'Copeland', 'mireya.copeland@bikes.shop', '(831) 555-5555', 1, 'ST1', 3031),
    (3033, 'Genna', 'Serrano', 'genna.serrano@bikes.shop', '(831) 555-5556', 1, 'ST1', 3032),
    (3034, 'Virgie', 'Wiggins', 'virgie.wiggins@bikes.shop', '(831) 555-5557', 1, 'ST1', 3032),
    (3035, 'Jannette', 'David', 'jannette.david@bikes.shop', '(516) 379-4444', 1, 'ST2', 3031),
    (3036, 'Marcelene', 'Boyer', 'marcelene.boyer@bikes.shop', '(516) 379-4445', 1, 'ST2', 3035),
    (3037, 'Venita', 'Daniel', 'venita.daniel@bikes.shop', '(516) 379-4446', 1, 'ST2', 3035),
    (3038, 'Kali', 'Vargas', 'kali.vargas@bikes.shop', '(972) 530-5555', 1, 'ST3', 3031),
    (3039, 'Layla', 'Terrell', 'layla.terrell@bikes.shop', '(972) 530-5556', 1, 'ST3', 3037)
*/