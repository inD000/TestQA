﻿#language: ru

@tree

Функционал: проверка интерфейса документа Заказ покупателя

Как Тестировщик я хочу
проверить доступность и заполнение полей при работе с документом Заказ покупателя

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка элементов если не заполненно поле Партнер
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку очистить у поля с именем "Partner"	
	Тогда элемент формы с именем "Partner" стал равен ''
	И элемент формы с именем "Agreement" стал равен ''
	И элемент формы с именем "LegalName" не доступен


	
			