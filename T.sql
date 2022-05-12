rop table if exists Netflix_Dataset;
 
 Create Table Netflix_Dataset(
     Show_Id VARCHAR,
     Category VARCHAR,
     Title VARCHAR,
     Director VARCHAR
     ,Casts VARCHAR,
     Country VARCHAR
     ,Release_Date DATE
     ,Rating VARCHAR,
     Duration VARCHAR
     ,Type VARCHAR,
     Description VARCHAR
 );
 
 copy Netflix_Dataset from [PATH ] delimiter ',' csv header;

CREATE TABLE Netflix_Dataset_2 AS TABLE Netflix_Dataset;

UPDATE Netflix_Dataset_2 SET showid = UPPER(showid), category = UPPER(category), title = UPPER(title), director = UPPER(director), casts = UPPER(casts), country = UPPER(country), release_date = UPPER(release_date), rating = UPPER(rating), duration = UPPER(duration), "type" = UPPER("type"), description = UPPER(description);

Select Split_part(Country, ',', 1) INTO TABLE Countries from Netflix_Dataset 

Select Split_part(Director, ',', 1) INTO TABLE Director from netflix_dataset
