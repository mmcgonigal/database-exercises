USE codeup_test_db;


-- AS  --
SELECT name  AS 'ALL Albums' FROM albums ;
SELECT name AS 'All albums released before 1980' FROM albums  WHERE release_date <=1980;
SELECT name AS 'MICHAEL JACKSON\'s albums' FROM albums WHERE artist = 'Michael Jackson';

# --SELECT and UPDATE STATEMENT
#
# UPDATE albums
# SET sales = sales * 10,
#     WHERE  = *



# UPDATE table_name
# SET column1 = 'value1', column2 = 'value2', ...
# WHERE columnA = 'valueA';