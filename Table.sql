Drop TABLE IF EXISTS Countries;
DROP TABLE IF EXISTS Country;
drop table if exists Netflix_Dataset;
 
CREATE TABLE Netflix_Dataset(
     Show_Id VARCHAR,
     Category VARCHAR,
     Title VARCHAR,
     Director VARCHAR,
     Casts VARCHAR,
     Country VARCHAR,
     Release_Date DATE
     ,Rating VARCHAR,
     Duration VARCHAR,
     Type VARCHAR,
     Description VARCHAR
 );
 
COPY Netflix_Dataset FROM [PATH ] DELIMINATOR ',' CSV HEADER;

CREATE TABLE Netflix_Dataset_2 AS TABLE Netflix_Dataset;

UPDATE Netflix_Dataset_2 SET showid = UPPER(showid), category = UPPER(category), title = UPPER(title), director = UPPER(director), casts = UPPER(casts), country = UPPER(country), release_date = UPPER(release_date), rating = UPPER(rating), duration = UPPER(duration), "type" = UPPER("type"), description = UPPER(description);

UPDATE Netflix_Dataset_2 SET director='NO DIRECTOR INFO' WHERE director IS NULL;

/*Director Country Table*/

SELECT UNNEST(string_to_array(Country, ',')) AS Country INTO TABLE tbl_ FROM netflix_dataset; 
Select DISTINCT(Country) AS Country INTO TABLE Country FROM tbl_ ORDER BY country;

SELECT UNNEST(string_to_array(Director, ',')) AS director INTO TABLE tbl_h FROM netflix_dataset;
SELECT DISTINCT(Director) AS Director INTO TABLE Director FROM tbl_h ORDER BY Director;
Drop TABLE tbl_;
Drop TABLE tbl_h;