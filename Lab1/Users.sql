 CREATE USER user_first WITH PASSWORD '0000';
 GRANT ALL ON DATABASE "lab1" TO user_first;
 CREATE USER user_second WITH PASSWORD '2222';
 GRANT connect ON DATABASE "lab1" TO user_second;
 