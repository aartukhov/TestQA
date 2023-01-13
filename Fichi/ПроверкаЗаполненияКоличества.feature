﻿#language: ru

@tree

Функционал: Проверка заполненности количества

я хочу проверить что колиество заполнено

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка заполненности количества
И я закрываю все окна клиентского приложения
*Открытие заказа
	Когда В панели разделов я выбираю 'Продажи'
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'		
	Когда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
*Заполнение ТЧ
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000027' | 'Ряженка'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст 'тест'
	И в таблице "Товары" я завершаю редактирование строки
*Проверка суммы и количества в документе
	И В таблице "Товары" поле с именем "ТоварыКоличество" доступно
	И в таблице текущее поле заполнено