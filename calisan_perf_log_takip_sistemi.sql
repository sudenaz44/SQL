CREATE TABLE Calisanlar (
    CalisanID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(100),
    Maas INT,
    PerformansPuan INT
);


CREATE TABLE LogTablosu (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    Islem NVARCHAR(255),
    Tarih DATETIME DEFAULT GETDATE()
);


INSERT INTO Calisanlar (Ad, Maas, PerformansPuan) VALUES
('Ay�e Kaya', 9500, 75),
('Mehmet Demir', 12000, 88),
('Zeynep �ahin', 15000, 91),
('Ali Y�lmaz', 8000, 60);


CREATE VIEW Y�ksekMaasl�lar AS
SELECT Ad, Maas FROM Calisanlar
WHERE Maas > 10000;


SELECT * FROM Y�ksekMaasl�lar;


CREATE TRIGGER Trigger_Logla
ON Calisanlar
AFTER INSERT
AS
INSERT INTO LogTablosu (Islem)
VALUES ('Yeni �al��an eklendi');


INSERT INTO Calisanlar (Ad, Maas, PerformansPuan)
VALUES ('Fatma �z', 11000, 85);

SELECT * FROM LogTablosu;


CREATE VIEW PerformansDurumu AS
SELECT Ad,
       PerformansPuan,
       CASE
           WHEN PerformansPuan >= 85 THEN 'Harika'
           WHEN PerformansPuan >= 70 THEN '�yi'
           ELSE 'Geli�tirilmeli'
       END AS Degerlendirme
FROM Calisanlar;


SELECT * FROM PerformansDurumu;
