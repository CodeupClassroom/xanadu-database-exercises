use xanadu_test_db;

select * from albums;

update albums set sales = sales * 10;

update albums set release_date = release_date - 100;

select * from  albums;

update albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';

