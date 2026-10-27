-- Retrieve all columns for censored patients
SELECT * FROM cirrhosis WHERE Status = 'C';

-- Average age of male patients (Age is in days)
SELECT AVG(Age) AS avg_age_days, AVG(Age)/365.25 AS avg_age_years FROM cirrhosis WHERE Sex = 'M';

-- Patients with ascites and hepatomegaly
SELECT COUNT(*) AS patients FROM cirrhosis WHERE Ascites = 'Y' AND Hepatomegaly = 'Y';

-- Maximum bilirubin
SELECT MAX(Bilirubin) AS max_bilirubin FROM cirrhosis;

--  Average cholesterol, D-penicillamine
SELECT AVG(Cholesterol) AS avg_cholesterol FROM cirrhosis WHERE Drug = 'D-penicillamine';

-- ID and N_Days, edema despite diuretics
SELECT ID, N_Days FROM cirrhosis WHERE Edema = 'Y';

-- Male/female count per stage
SELECT Stage, Sex, COUNT(*) AS patients FROM cirrhosis GROUP BY Stage, Sex ORDER BY Stage, Sex;

-- Average prothrombin time, patients who died
SELECT AVG(Prothrombin) AS avg_prothrombin FROM cirrhosis WHERE Status = 'D';

-- ID and Status, spiders and hepatomegaly
SELECT ID, Status FROM cirrhosis WHERE Spiders = 'Y' AND Hepatomegaly = 'Y';

-- Min and max platelets
SELECT MIN(Platelets) AS min_platelets, MAX(Platelets) AS max_platelets FROM cirrhosis;

-- ID and N_Days, patients who died
SELECT ID, N_Days FROM cirrhosis WHERE Status = 'D';

-- Max and min triglycerides
SELECT MAX(Tryglicerides) AS max_triglycerides, MIN(Tryglicerides) AS min_triglycerides FROM cirrhosis;

-- Average albumin per stage
SELECT Stage, AVG(Albumin) AS avg_albumin FROM cirrhosis GROUP BY Stage ORDER BY Stage;

-- Total male and female patients
SELECT Sex, COUNT(*) AS total FROM cirrhosis GROUP BY Sex;

-- Average platelets with/without ascites
SELECT Ascites, AVG(Platelets) AS avg_platelets FROM cirrhosis GROUP BY Ascites;

-- ID, Age, Status: age > 50 (years) and hepatomegaly
SELECT ID, Age, Status FROM cirrhosis WHERE Age/365.25 > 50 AND Hepatomegaly = 'Y';

-- ID and Drug containing 'penicillamine'
SELECT ID, Drug FROM cirrhosis WHERE Drug LIKE '%penicillamine%';

-- ID, Age, Bilirubin by increasing age
SELECT ID, Age, Bilirubin FROM cirrhosis ORDER BY Age ASC;

-- ID, N_Days, Status by descending N_Days
SELECT ID, N_Days, Status FROM cirrhosis ORDER BY N_Days DESC;

-- ID, Age, Cholesterol: under 50 (years), by cholesterol
SELECT ID, Age, Cholesterol FROM cirrhosis WHERE Age/365.25 < 50 ORDER BY Cholesterol ASC;
