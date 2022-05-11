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

Select Split_part(Country, ',', 1) INTO TABLE Countries from Netflix_Dataset 


Select Split_part(Director, ',', 1) INTO TABLE Director from netflix_dataset
