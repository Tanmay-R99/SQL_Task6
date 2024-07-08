--- Table 1
create table movie1(
	imdb_id varchar(20),
	Movies_id int ,
	Movies_Title varchar , 
	Director varchar ,
	imdb_Rating float,
	Certificate varchar ,
	Runtime varchar,
	year int
)

insert into movie1 (imdb_id,Movies_id,Movies_Title,Director,imdb_Rating,Certificate,Runtime,year)
	values 
('tt0114709',862,'The Biggest Little Farm','John Chester',8,'A','142 min',2018)

select * from movie1 


--Table 2

create table movie2(
	Movies_id varchar , 
	Star_Cast varchar(100),
	Genre varchar(150),
	MetaScore float , 
	budget numeric,
	original_language varchar (100)
)

insert into movie2 values 
(862,'Tim Robbins','Documentary',73,30000000,'en')

select * from movie2
	


--- Table 3

create table movie3(
	imdb_id varchar(50),
	star_cast varchar(50) ,
	Star2 varchar , 
	Gener varchar ,
	popularity float,
	status varchar(50) ,
	revenue float,
	MetaScore float,
	No_of_Votes int
)

insert into movie3 values 
('tt0114709','Tim Robbins','Morgan Freeman','Documentary',	21.946943,'Released', 373554033.00, 73 ,	2343110
)

select * from movie3


--- Joins 
--- contains the functions like where,order by,having,limit and group by.

select * from movie1
select * from movie2
select * from movie3

-- inner join 
select a.imdb_id , a.movies_title , a.year , c.gener ,c.star_cast  from movie1 as a
inner join movie3 as c
on a.imdb_id = c.imdb_id


--- left join 
select a.imdb_id , a.movies_title , a.year , c.gener ,c.star_cast  from movie1 as a
left join movie3 as c
on a.imdb_id = c.imdb_id 


-- right join
select a.imdb_id , a.movies_title , a.year , c.gener ,c.star_cast  from movie1 as a
right join movie3 as c
on a.imdb_id = c.imdb_id


-- using count and between
select movies_title from movie1 where year between '2015' AND '2020' 
select count(movies_title) from movie1 where year between '2015' AND '2020'

-- order by and limit
select movies_title , director from movie1 order by movie1 desc limit 200

-- like and group by
select certificate, imdb_rating from movie1 group by certificate, imdb_rating 
having certificate like 'A'


-- multiple operations
select a.imdb_id,a.movies_id , a.movies_title , a.certificate, c.star_cast,c.gener , b.metascore from movie1 as a
inner join movie3 as c
on a.imdb_id = c.imdb_id
inner join movie2 as b
on c.star_cast = b.star_cast 
group by c.gener ,c.star_cast, a.imdb_id , a.movies_title,a.movies_id ,a.certificate,b.metascore
having c.gener = 'Animation'
order by a.certificate DESC
limit 200


-- union 
select movies_title  , certificate , director from movie1
union 
select star_cast,gener , status from movie3

---- ----- 


