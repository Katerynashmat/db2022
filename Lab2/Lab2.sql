--Лабораторна робота №2
--з дисципліни Бази даних та інформаційні системи
--студентки групи МІТ-31
--Шмат Катерини

--1) Обрати всі поля з таблиці Product
--SELECT * FROM Product

--2) Обрати лише одне поле weight з таблиці Product
--SELECT weight FROM Product

--3) Обрати 2 поля з таблиці Product
--SELECT weight, price_id FROM Product

--4) Обрати лише унікальні дані з таблиці Product
--SELECT DISTINCT * FROM Product

--5) Обрати лише унікальні дані manufacturer_id з таблиці Product
--SELECT DISTINCT manufacturer_id FROM Product

--6) Обрати лише унікальні дані за двома стовпцями з таблиці
--SELECT DISTINCT weight, manufacturer_id FROM Product

--7) Обрати з таблиці Manufacturer всі поля категорії 'Aluminum'
--SELECT * FROM Manufacturer WHERE category = 'Aluminum';

--8) Обрати з таблиці Categories одне поле з 'L' 
--SELECT brand FROM Categories WHERE size = 'L';

--9) Створити набір значень поєднуючи size i weight
--SELECT weight FROM Product
--UNION
--SELECT size FROM Categories
--ORDER by size;

--10) Обрати з таблиці Categories 2 поля з 'Lentil'
--SELECT size, weight FROM Categories WHERE brand = 'Lentil';

--11) Обрати з таблиці Manufacturer всі поля з не 'Aluminum'
--SELECT * FROM Manufacturer WHERE NOT category = 'Aluminum';

--12) Обрати з таблиці Manufacturer одне поле з не 'Aluminium'
--SELECT purchase_price FROM Manufacturer WHERE NOT category = 'Aluminum';

--13) Обрати з таблиці Categories всі поля з brand 'Lentil' і з color 'Crimson' or weight '70'
--SELECT * FROM Categories WHERE brand = 'Lentil' and color = 'Crimson' or weight = '70';

--14) Обрати з таблиці Categories декілька полів з не 'Lentil'
--SELECT size, weight FROM Categories WHERE NOT brand = 'Lentil';

--15) Обрати з таблиці Categories всі поля з brand 'Lentil' і з color 'Crimson'
--SELECT * FROM Categories WHERE brand = 'Lentil' and color = 'Crimson';

--16) Обрати з таблиці Categories всі поля з brand 'Lentil' або з color 'Crimson'
--SELECT * FROM Categories WHERE brand = 'Lentil' or color = 'Crimson';

--17) Обрати з таблиці Categories всі поля з brand не 'Lentil' і з color 'Crimson'
--SELECT * FROM Categories WHERE NOT brand = 'Lentil' and color = 'Crimson';

--18) Обрати з таблиці Categories всі поля з brand 'Lentil' і з color не 'Crimson'
--SELECT * FROM Categories WHERE brand = 'Lentil' and NOT color = 'Crimson';

--19) Обрати з таблиці Categories всі поля з brand не 'Lentil' і з color не 'Crimson'
--SELECT * FROM Categories WHERE NOT brand = 'Lentil' and NOT color = 'Crimson';

--20) Обрати з таблиці Categories всі поля з brand не 'Lentil' або з color 'Crimson'
--SELECT * FROM Categories WHERE NOT brand = 'Lentil' or color = 'Crimson';

--21) Обрати з таблиці Categories всі поля з brand 'Lentil' або з color не 'Crimson'
--SELECT * FROM Categories WHERE brand = 'Lentil' or NOT color = 'Crimson';

--22) Обрати з таблиці Categories всі поля з brand не 'Lentil' або з color не 'Crimson'
--SELECT * FROM Categories WHERE NOT brand = 'Lentil' or NOT color = 'Crimson';

--23) Обрати з таблиці Categories всі поля з brand не 'Lentil' або з color 'Crimson'
--SELECT * FROM Categories WHERE NOT brand = 'Lentil' or color = 'Crimson';

--24) Обрати з таблиці Categories одне поле з brand 'Lentil' і з color 'Crimson'
--SELECT brand FROM Categories WHERE brand = 'Lentil' AND color = 'Crimson';

--25) Обрати з таблиці Categories одне поле з brand 'Lentil' або з color 'Crimson'
--SELECT brand FROM Categories WHERE brand = 'Lentil' OR color = 'Crimson';

--26) Обрати з таблиці Categories одне поле з brand не 'Lentil' і з color 'Crimson'
--SELECT brand FROM Categories WHERE NOT brand = 'Lentil' AND color = 'Crimson';

--27) Обрати з таблиці Categories одне поле з brand 'Lentil' і з color не 'Crimson'
--SELECT brand FROM Categories WHERE brand = 'Lentil' AND NOT color = 'Crimson';

--28) Обрати з таблиці Categories одне поле з brand не 'Lentil' і з color не 'Crimson'
--SELECT brand FROM Categories WHERE NOT brand = 'Lentil' AND NOT color = 'Crimson';

--29) Обрати з таблиці Categories одне поле з brand 'Lentil' і з color не 'Crimson'
--SELECT brand FROM Categories WHERE brand = 'Lentil' AND NOT color = 'Crimson';

--30) Обрати з таблиці Categories одне поле з brand не 'Lentil' або з color 'Crimson'
--SELECT brand FROM Categories WHERE NOT brand = 'Lentil' OR color = 'Crimson';

--31) Обрати з таблиці Categories одне поле з brand 'Lentil' або з color не 'Crimson'
--SELECT brand FROM Categories WHERE brand = 'Lentil' OR NOT color = 'Crimson';

--32) Обрати з таблиці Categories одне поле з brand не 'Lentil' або з color не 'Crimson'
--SELECT brand FROM Categories WHERE NOT brand = 'Lentil' OR NOT color = 'Crimson';

--33) Обрати з таблиці Categories декілька полів з brand 'Lentil' і з color 'Crimson'
--SELECT brand, color FROM Categories WHERE brand = 'Lentil' AND color = 'Crimson';

--34) Обрати з таблиці Categories декілька полів з brand 'Lentil' або з color 'Crimson'
--SELECT brand, color FROM Categories WHERE brand = 'Lentil' OR color = 'Crimson';

--35) Обрати з таблиці Categories одне поле з brand не 'Lentil' або з color не 'Crimson'
--SELECT brand FROM Categories WHERE NOT brand = 'Lentil' OR NOT color = 'Crimson';

--36) Обрати з таблиці Categories декілька полів з brand не 'Lentil' і з color 'Crimson'
--SELECT brand, color FROM Categories WHERE NOT brand = 'Lentil' AND color = 'Crimson';

--37) Обрати з таблиці Categories декілька полів з brand 'Lentil' і з color не 'Crimson'
--SELECT brand, color FROM Categories WHERE brand = 'Lentil' AND NOT color = 'Crimson';

--38) Обрати з таблиці Categories декілька полів з brand не 'Lentil' і з color не 'Crimson'
--SELECT brand, color FROM Categories WHERE brand = 'Lentil' AND color = 'Crimson';

--39) Обрати з таблиці Categories декілька полів з brand не 'Lentil' або з color 'Crimson'
--SELECT brand, color FROM Categories WHERE NOT brand = 'Lentil' OR color = 'Crimson';

--40) Обрати з таблиці Categories декілька полів з brand 'Lentil' або з color не 'Crimson'
--SELECT brand, color FROM Categories WHERE brand = 'Lentil' OR NOT color = 'Crimson';

--41) Обрати з таблиці Categories декілька полів з brand не 'Lentil' або з color не 'Crimson'
--SELECT brand, color FROM Categories WHERE NOT brand = 'Lentil' OR NOT color = 'Crimson';

--42) Обрати з таблиці Categories всі поля з brand 'Lentil' і з color 'Crimson' або 'Red'
--SELECT * FROM Categories WHERE brand = 'Lentil' and (color = 'Crimson' or color = 'Red');

--43) Обрати верхні 4 рядки з Categories
--SELECT TOP(4) * FROM Categories; 

--44) Обрати найменшу вагу з таблиці Categories
--SELECT min(weight) FROM Categories;

--45) Обрати найбільшу вагу з таблиці Categories 
--SELECT sum(weight) FROM Categories;

--46) Обрати найбільшу вагу з таблиці Categories
--SELECT count(weight) FROM Categories;

--47) Обрати найбільшу вагу з таблиці Categories
--SELECT avg(weight) FROM Categories;

--48) Відсортувати ціну у порядку спадання
--SELECT id, price FROM Product ORDER BY price;

--49) Відсортувати вагу у порядку зростання
--SELECT size, weight FROM Categories ORDER BY weight DESC;

--50) Вибираємо всі записи, в яких size продукту дорівнює М, S або L
--SELECT size, brand FROM Categories
--WHERE size IN ('M', 'S', 'L');

--51) Обрати продукти за рейтингом, у яких weight знаходиться в районі від 1 до 90 
--SELECT size, weight FROM Categories
--WHERE weight BETWEEN 1 AND 90;
  
--52) Обрати всі рядки які починаються з 'Ru'
--SELECT * FROM Manufacturer WHERE category LIKE 'Ru%'
  
--53) Обрати всі рядки які закінчуються на '%s' 
--SELECT * FROM Manufacturer WHERE category LIKE '%s'
  
--54) Обрати всі рядки які містять у собі 'a'
--SELECT * FROM Manufacturer WHERE category LIKE '%a%'

--55) Обрати всі рядки які містять у собі 'a' на третьому місці 
--SELECT * FROM Manufacturer WHERE category LIKE '__a%'

--56) Обрати всі рядки які починаються з 'G' і мають не менше 5 букв
--SELECT * FROM Manufacturer WHERE category LIKE 'G___%'

--57) Обрати всі рядки які містять у собі 'l' 5
--SELECT * FROM Manufacturer WHERE category LIKE '____l%'

--58) Обрати всі рядки які починаються з 'G' і закінчуються на 's'
--SELECT * FROM Manufacturer WHERE category LIKE 'G%s'

--59) Вибираємо верхні 3 рядки усіх стовпців
--SELECT * FROM Categories LIMIT 3;

--60) Обрати найбільшу вагу з таблиці Categories
--SELECT max(weight) FROM Categories;

--61) Обрати товар з вагою вище 15 з Categories
--SELECT brand, weight FROM Categories where weight>15;

--62) Обрати товар з вагою нижче або дорівню 15 з Categories
--SELECT brand, weight FROM Categories where weight<=15;

--63) Обрати товар з вагою нижче 15 з Categories
--SELECT brand, weight FROM Categories where weight<15;

--64) Обрати товар з вагою вище або дорівнює 15 з Categories
--SELECT brand, weight FROM Categories where weight>=15;

--65) Обрати стовпці size, weight, brand доки є збіг за id для таблиць Product та Categories
--SELECT Categories.size, Categories.weight, Categories.brand
--FROM Categories
--INNER JOIN Product ON Categories.id=Product .id;

--66) Обрати середню вагу сгрупувавши за брендом
--SELECT avg(weight), brand
--FROM Categories
--GROUP BY brand
--HAVING avg(weight)>18;

--67) Обрати всі поля з Categories сортуючи за розміром 
--SELECT * FROM Categories
--ORDER BY size;

--68) Обрати всі поля з Categories сортуючи за розміром та вагою у порядку спадання
--SELECT * FROM Categories
--ORDER BY size, weight DESC;

--69) Обрати всі поля з Categories де вага дорівнює 20
--SELECT * FROM Categories
--WHERE weight=20;

--70) Обрати стовпчики size, weight, brand, color з Categories, об'єднавши brand+color в один стовпчик
--SELECT size, weight, concat(brand, ' ', color) FROM Categories;

--71) Обрати стовпчики size, weight, brand, color з Categories, об'єднавши brand+color в один стовпчик з назвою united
--SELECT size, weight, concat(brand, ' ', color) AS "united" FROM Categories;

--72) Назвати стовпчик size з Categories як "Розмір"
--SELECT size AS "Розмір" FROM Categories;

--73) Середня ціна товару після 2021 року
--SELECT avg(weight) FROM CMR
--WHERE date>'2021-12-31'::date;

--74) Обрати бренд товару з Categories які червоного кольору та починаються на літеру С
--SELECT brand FROM Categories WHERE color = 'Red' AND brand LIKE 'C%';

--75) Обрати бренд товару з Categories які червоного кольору та закінчуються на літеру С
--SELECT brand FROM Categories WHERE color = 'Red' AND brand LIKE '%с';

--76) Обрати бренд товару з Categories які червоного кольору та мають всередині літеру С
--SELECT brand FROM Categories WHERE color = 'Red' AND brand ILIKE '%с%';

--77) Обрати бренд товару з Categories які червоного кольору, починаються на літеру С та не менше 7 літер
--SELECT brand FROM Categories WHERE color = 'Red' AND brand LIKE 'C_____%';

--78) Обрати бренд товару з Categories які не червоного кольору та починаються на літеру С
--SELECT brand FROM Categories WHERE NOT color = 'Red' AND brand ILIKE 'C%';

--79) Дописати запси зліва таблиці
--SELECT * FROM Categories LEFT JOIN Product ON Categories.category_id=Product.category_id;

--80) Дописати запси справа таблиці
--SELECT * FROM Categories RIGHT JOIN Product ON Categories.category_id=Product.category_id;

--81) Дописати запси в об'єднанні фнкцій RIGHT+LEFT+INNER таблиці
--SELECT * FROM Categories FULL JOIN Product ON Categories.category_id=Product.category_id;

--82) Змінити значення у таблиці
--UPDATE Categories SELECT brand = 'Sikes';

--83) Змінити значення у продуктів з розміром S
--UPDATE Categories SELECT brand = 'Sikes' WHERE size = 'S';

--84) Вивести значення які не входять у проміжок
--SELECT * FROM Categories WHERE color NOT IN ('Blue', 'Red', 'Crimson')

--85) Вивести значення які не починаються на літеру С
--SELECT * FROM Categories WHERE brand NOT LIKE 'C%';

--86) Видалити таблицю
--TRUNCATE TABLE Manufacturer;

--87) Видалити таблицю
--DELETE FROM Manufacturer;

--88) Обрати бренд товару з Categories які червоного або синього кольору або не починаються на літеру С
--SELECT brand FROM Categories WHERE (color = 'Red' or color = 'Blue') OR NOT brand LIKE 'C%';

--89) Вивести 2 таблиці з id
--SELECT * FROM Categories INNER JOIN Product ON Categories.category_id=Product.category_id;

--90) Множення таблиць
--SELECT * FROM Categories CROSS JOIN Product

--91) Обрати бренд товару з Categories які червоного кольору або починаються на літеру С сортуючи за брендом
--SELECT brand FROM Categories WHERE color = 'Red' OR brand LIKE 'C%' ORDERED BY brand;

--92) Обрати унікальні дані з таблиці де розмір S
--SELECT DISTINCT * FROM Categories WHERE size = 'S';

--93) Обрати унікальні дані з таблиці де розмір S та вага 90
--SELECT DISTINCT * FROM Categories WHERE size = 'S' AND weight = '90';

--94) Додати стовпчик до таблички
--ALTER TABLE Categories ADD price integer;

--95) Вивести першу не нульову строку у табличці 
--SELECT COALESCE(size, weight) FROM Categories;

--96) Обрати лише дані з заданого масиву даних
--SELECT * FROM Categories WHERE size IN (S, M);

--97) Обрати годину з часового проміжку
--SELECT EXTRACT(HOUR FROM TIMESTAMP '2021-12-31 15:21:00');

--98) Обрати бренд, визначивши кількість літер у ньому, який починається на літеру с та його довжина від 5 до 13 літер
--SELECT brand, LENGTH(brand) brand_length 
--FROM Categories 
--WHERE brand LIKE 'C%' AND LENGTH(brand) BETWEEN 5 AND 13 
--ORDER BY brand_length;

--99) Обрати перші 6 рядків
--SELECT weight FROM Categories FETCH FIRST 6 ROW ONLY;

--100) Обрати товар у якого немає ваги
--SELECT brand, weight FROM Categories WHERE weight = NULL;

--Висновки: після виконнаня даної лабораторної роботи можна побачити, що можливо створити безліч запитів завдяки рекомбінації даних для одного й того ж запиту.
--А також за допомогою існування великої кількості різноманітних запитів, можна з легкістю виконувати операції у бд від додавання стовпців до зміни інформації у них.
