create database Vegetables_and_fruits;

use Vegetables_and_fruits;

CREATE TABLE Vegetables_and_fruits (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) not null,
    Type VARCHAR(50) not null,
    Color VARCHAR(50) not null,
    Calorie INT default '0',
    Description VARCHAR(250)
);

INSERT INTO Vegetables_and_fruits (`Name`, `Type`, `Color`, `Calorie`, `Description`) VALUES
('Огурец', 'Овощ', 'Зеленый', 15, 'Вкусный когда соленый'),
('Арбуз', 'Фрукт', 'Зеленый', 30, 'Вкусный летом'),
('Помидор', 'Овощ', 'Красный', 	25, 'Вкусный в салатах'),
('Груша', 'Фрукт', 'Желтый', 57, 'Очень вкусная'),
('Банан', 'Фрукт', 'Желтый', 89, 'Бывают еще зеленые'),
('Яблоко', 'Фрукт', 'Зеленый', 52, 'Всегда вкусные');

use Vegetables_and_fruits;

# ЗАДАНИЕ №1:
# Отображение всей информации из таблицы с овощами и фруктами
select * from Vegetables_and_fruits;

# Отображение всех овощей;
select * from Vegetables_and_fruits where Type = 'Овощ';

# Отображение всех фруктов;
select * from Vegetables_and_fruits where Type = 'Фрукт';

# Отображение всех названий овощей и фруктов;
select Name from Vegetables_and_fruits;

# Отображение всех цветов. Цвета должны быть уникальными;
select distinct color from Vegetables_and_fruits;

# Отображение фруктов конкретного цвета;
select * from Vegetables_and_fruits where color = 'Зеленый' and type = 'Фрукт';

# Отображение овощей конкретного цвета.
select * from Vegetables_and_fruits where color = 'Зеленый' and type = 'Овощ';

# ЗАДАНИЕ 2:
# Отображение всех овощей с калорийностью меньше, указанной калорийности;
select * from Vegetables_and_fruits where type = 'Овощ' and calorie < 40;

# Отображение всех фруктов с калорийностью в указанном диапазоне;
select * from Vegetables_and_fruits where type = 'Фрукт' and calorie < 40;

# Отображение всех овощей в названии, которых есть указанное слово;
select * from Vegetables_and_fruits where type = 'Овощ' and name like '%дор%';

# Отображение всех овощей и фруктов в кратком описании, которых есть указанное слово.
select * from Vegetables_and_fruits where Description like '%вкус%';

# Показать все овощи и фрукты, у которых цвет желтый или красный.
select * from Vegetables_and_fruits where color = 'Красный' or color = 'Желтый';

#Задание 3:
# Показать количество овощей;
select count(*) from Vegetables_and_fruits where type = 'Овощ';

# Показать количество фруктов;
select count(*) from Vegetables_and_fruits where type = 'Фрукт';

# Показать количество овощей ифруктов заданного цвета;
select count(*) from Vegetables_and_fruits where color = 'Зеленый';

 # Показать количество овощей и фруктов каждого цвета;
 select type, color, count(*) from Vegetables_and_fruits
 group by type, color;
 
 # Показать цвет с минимальным количеством овощей и фруктов;
SELECT min(count) FROM (select type, count(*) as count from Vegetables_and_fruits group by type, color) as minColor;
     
# Показать цвет с максимальным количеством овощей и фруктов;
SELECT max(count) FROM (select count(*) as count from Vegetables_and_fruits group by type, color) as maxColor;

select type, color, count(color) as count from Vegetables_and_fruits
group by type, color;

# Показать минимальную калорийность овощей и фруктов;
select min(calorie) from Vegetables_and_fruits;

# Показать максимальную калорийность овощей и фруктов;
select max(calorie) from Vegetables_and_fruits;

# Показать среднюю калорийность овощей и фруктов;
select avg(calorie) from Vegetables_and_fruits;

# Показать фрукт с минимальной калорийностью;
select name, type, calorie from Vegetables_and_fruits 
where calorie = (select min(calorie) from Vegetables_and_fruits where type = 'Фрукт');


# Показать фрукт с максимальной калорийностью.
select name, type, calorie from Vegetables_and_fruits 
where calorie = (select max(calorie) from Vegetables_and_fruits where type = 'Фрукт');


