-- queries

-- 0.1 

SELECT
	name AS 'имя',
	surename AS 'фамилия',
	idemployee AS 'табельный номер сотрудника',
	`vacation orders`.`v_count_days` AS 'отпуск - дни',
	`vacation orders`.date
FROM
	hr_department.employee
	JOIN `vacation orders` ON employee.idemployee = `vacation orders`.v_idemployee
WHERE
	`vacation orders`.date > '2018-07-20'
	AND `vacation orders`.date < '2018-08-20'
	AND idemployee = 5;

-- 0.2

SELECT
	name AS 'имя',
	surename AS 'фамилия',
	idemployee AS 'табельный номер сотрудника',
	`vacation orders`.`v_count_days` AS 'отпуск - дни',
	`vacation orders`.date
FROM
	hr_department.employee
	JOIN `vacation orders` ON employee.idemployee = `vacation orders`.v_idemployee
WHERE
	`vacation orders`.date > '2018-07-20'
	AND `vacation orders`.date < '2018-08-20'
	AND idemployee = 5;

-- 0.3

SELECT
	name AS 'имя',
	surename AS 'фамилия',
	idemployee AS 'табельный номер сотрудника',
	`seak orders`.`s_count_days` AS 'больничный - дни',
	`seak orders`.date
FROM
	hr_department.employee
	JOIN `seak orders` ON employee.idemployee = `seak orders`.s_idemployee
WHERE
	`seak orders`.date > '2018-07-20'
	AND `seak orders`.date < '2018-08-20' AND idemployee = 5;

-- 1 

SELECT
	idemployee,
	name,
	surename,
	department
FROM
	hr_department.employee
WHERE
	department = 'разработка пользовательских интерфейсов';

-- 2 

SELECT
	idemployee,
	name,
	surename,
	patronymic,
	phone,
	email,
	`boss phone`,
	`boss email`
FROM
	hr_department.employee
WHERE
	post = 'руководитель';

-- 3 

SELECT
	idemployee,
	name,
	surename,
	`count of children`
FROM
	hr_department.employee
WHERE
	`count of children` >= 3;

-- 4

SELECT
	name,
	surename,
	date,
	`v_count_days`
FROM
	hr_department.employee
	JOIN `vacation orders` ON employee.idemployee = `vacation orders`.v_idemployee
WHERE
	`v_count_days` > 12;

-- 5

SELECT
	name,
	surename,
	date,
	`q_lc_article`
FROM
	hr_department.employee
	JOIN `quit orders` ON employee.idemployee = `quit orders`.q_idemployee
WHERE
	`q_lc_article` = 80;

-- 6

SELECT
	name,
	surename,
	date,
	`trip days` AS trip,
	`vacation days` AS vacation,
	`seak days` AS seak,
	`work days` AS 'work'
FROM
	hr_department.employee
	JOIN `sheets work time` ON employee.idemployee = `sheets work time`.swt_idemployee
WHERE
	swt_idemployee = 4
	AND `period begin` = '2019-08-20';

-- 7

SELECT
	name AS 'имя',
	surename AS 'фамилия',
	idorder AS 'приказ',
	`type` AS 'тип'
FROM
	`orders`
	JOIN hr_department.employee ON orders.o_idemployee = employee.idemployee
	JOIN `orders types` ON orders.o_order_type = `orders types`.`type`
WHERE
	idemployee = 3;

-- 8

SELECT
	name AS 'имя',
	surename AS 'фамилия',
	CURDATE() as 'сегодняшний день',
    TIMESTAMPDIFF(YEAR,birthday,CURDATE()) AS 'возраст'
FROM
	hr_department.employee;

-- 9

SELECT
	name AS 'имя',
	surename AS 'фамилия',
	CURDATE() AS 'сегодняшний день',
	TIMESTAMPDIFF(YEAR, birthday, CURDATE()) AS 'возраст'
FROM
	hr_department.employee
WHERE (TIMESTAMPDIFF(YEAR, birthday, CURDATE()) >= 60
	AND gender = 'жен')
	or(TIMESTAMPDIFF(YEAR, birthday, CURDATE()) >= 65
		AND gender = 'муж');

-- 10

SELECT
	name AS 'имя',
	surename AS 'фамилия',
	`education degree` AS 'образование',
	salary AS 'оклад'
FROM
	hr_department.employee
WHERE
	`education degree` = 'полное высшее'
	AND salary < 200000;

-- 11

SELECT DISTINCT
	department AS 'отдел',
	`work adress` AS 'юридический адрес',
	`department phone code` AS 'телефонный код отдела'
FROM
	employee
ORDER BY
	department;

-- 12

SELECT
	name AS 'имя',
	surename AS 'фамилия',
	`work days` AS 'отработано дней',
	`period begin` AS 'начало периода',
	`period end` AS 'конец периода'
FROM
	employee
	JOIN `sheets work time` ON employee.idemployee = `sheets work time`.swt_idemployee
WHERE
	`period begin` > '2018-05-01'
	AND `period end` < '2018-11-01';

-- 13 

	`name` AS 'имя',
	`surename` AS 'фамилия',
	`s_count_days` AS 'количество дней',
	`to pay` AS 'к оплате'
FROM
	employee
	JOIN `seak orders` ON employee.idemployee = `seak orders`.s_idemployee
WHERE
	`s_count_days` > 7
ORDER BY
	`to pay`;

-- 14

SELECT
	name AS 'имя',
	surename AS 'фамилия',
	`period begin` AS 'начало периода',
	`period end` AS 'конец периода',
	ss_salary AS 'оклад',
	`time premium` AS 'надбавка',
	premium AS 'премия',
	(premium + `time premium` + ss_salary) AS 'зарплата'
FROM
	`sheets salary`
	JOIN employee ON `sheets salary`.ss_idemployee = employee.idemployee
ORDER BY
	(premium + `time premium` + ss_salary);


