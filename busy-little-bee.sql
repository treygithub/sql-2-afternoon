/* select * from invoice
join invoiceline on invoiceline.invoiceId = invoice.invoiceid
where invoiceline.unitprice > .99; */

/* select invoice.InvoiceDate, customer.FirstName, customer.LastName, invoice.Total
FROM Invoice 
JOIN Customer  ON invoice.CustomerId = customer.CustomerId; */

/* select customer.firstname, customer.lastname, employee.Firstname, employee.LastName
from customer
join employee on customer.supportrepid=employee.employeeid; */

/* 
select album.title, artist.name
from album
join artist on album.albumid = artist.artistid */

/* select playlisttrack.trackid
from playlisttrack
join playlist on playlist.playlistid = playlisttrack.playlistid
where playlist.name ='Music'; */

/* SELECT track.Name
FROM Track
JOIN PlaylistTrack ON playlisttrack.TrackId = track.TrackId
WHERE playlisttrack.PlaylistId = 5; */

/* SELECT track.name, playlist.Name
FROM Track 
JOIN PlaylistTrack ON track.TrackId = playlisttrack.TrackId
JOIN Playlist ON playlisttrack.PlaylistId = playlist.PlaylistId; */

/* select track.name, album.title
from track
join album on track.albumid = album.albumid
join genre on genre.genreid = track.genreid
where genre.name = 'Alternative' */

/* select * from invoice where invoiceid in( select invoiceid from invoiceline where unitprice > .99); */

/* SELECT *
FROM PlaylistTrack
WHERE PlaylistId IN ( SELECT PlaylistId FROM Playlist WHERE Name = "Music" ); */

/* SELECT Name
FROM Track
WHERE TrackId IN ( SELECT TrackId FROM PlaylistTrack WHERE PlaylistId = 5 ); */

/* SELECT *
FROM Track
WHERE GenreId IN ( SELECT GenreId FROM Genre WHERE Name = "Comedy" ); */

/* SELECT *
FROM Track
WHERE AlbumId IN ( SELECT AlbumId FROM Album WHERE Title = "Fireball" ) */
/* 
SELECT *
FROM Track
WHERE AlbumId IN ( 
  SELECT AlbumId FROM Album WHERE ArtistId IN ( 
    SELECT ArtistId FROM Artist WHERE Name = "Queen" 
  )); */
  
/*  update customer
 set fax = null
 where fax is not null; */
 
/*  UPDATE Customer
SET Company = "Self"
WHERE Company IS null; */

/* UPDATE Customer 
SET LastName = "Thompson" 
WHERE FirstName = "Julia" AND LastName = "Barnett"; */

/* update customer 
set supportrepid = 4
where email = "luisrojas@yahoo.cl"; */
/* 
UPDATE Track
SET Composer = "The darkness around us"
WHERE GenreId = ( SELECT GenreId FROM Genre WHERE Name = "Metal" )
AND Composer IS null; */

/* SELECT Count(*), g.Name
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name; */

/* SELECT Count(*), g.Name
FROM Track t
JOIN Genre g ON g.GenreId = t.GenreId
WHERE g.Name = 'Pop' OR g.Name = 'Rock'
GROUP BY g.Name; */
/* 
SELECT ar.Name, Count(*)
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
GROUP BY al.ArtistId; */

/* select distinct composer from track; */

/* select distinct billingpostalcode from invoice */

/* select distinct company from customer */


/* CREATE TABLE practice_delete ( Name string, Type string, Value integer );
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "silver", 100);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "silver", 100);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);

SELECT * FROM practice_delete; */

/*  select * from practice_delete where type = "bronze"; */

/* delete from practice_delete where type = "bronze"; */

/* select * from practice_delete where type = "silver"; */

/* delete from practice_delete where type = "silver"; */

/* delete from practice_delete where value = 150; */



/* made a better one below...... yeah :) */

/* CREATE TABLE users ( userID integer PRIMARY KEY, Name string, Email string);
INSERT INTO users ( Name, email ) VALUES ("timmy","timmy@yahoo.com");
INSERT INTO users ( Name, email ) VALUES ("bob","bob@yahoo.com");
INSERT INTO users ( Name, email ) VALUES ("trey","trey@yahoo.com"); */

/* CREATE TABLE Products ( productID integer PRIMARY KEY, name text, price integer); */
/* INSERT INTO products ( Name, price ) VALUES ("soap", 2);
INSERT INTO products ( Name, price ) VALUES ("towle",10);
INSERT INTO products ( Name, price ) VALUES ("spunge",4); */

/* CREATE TABLE orders ( orderID integer PRIMARY KEY, product);
INSERT INTO orders ( Name, email ) VALUES ("timmy","timmy@yahoo.com");
INSERT INTO orders ( Name, email ) VALUES ("bob","bob@yahoo.com");
INSERT INTO orders ( Name, email ) VALUES ("trey","trey@yahoo.com"); */


/* boss tables with 3 forign keys realational table for fun...   */


/* DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
  user_id SERIAL UNIQUE NOT NULL,
  lastname varchar(40)  NOT NULL,
  firstname varchar(40)  NOT NULL,
  address varchar(100)  NOT NULL,
  city varchar(30) NOT NULL,
  state varchar(2)  NOT NULL,
  zip varchar(5)  NOT NULL,
  phone varchar(15) NOT NULL,
  email varchar(100)  NOT NULL,
  password varchar(41) NOT NULL,
  PRIMARY KEY (user_id)
)  */

/* DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders (
  	order_id SERIAL UNIQUE NOT NULL PRIMARY KEY ,
    OrderNumber int NOT NULL,
    Person_id int KEY REFERENCES users(user_id)
); */

/* DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products (
  prod_id int SERIAL UNIQUE NOT NULL PRIMARY KEY,
  cat_id int(11) NOT NULL,
  description varchar(100) NOT NULL,
  price decimal(6,2) NOT NULL,
  quantity int(10) NOT NULL
); */