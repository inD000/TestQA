#language: ru

@tree

Функционал: Добавление картинок в справочник Товары

Как Тестировщик я хочу
проверить возможность прикрепления картинок к справочнику Товары

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: Добавление картинок в справочник Товары
* Подготовка нового Товара 
	И В командном интерфейсе я выбираю 'Закупки' 'Товары'
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Товар (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Товар'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Добавление картинки 
	И В текущем окне я нажимаю кнопку командного интерфейса 'Файлы'
	И я нажимаю на кнопку с именем 'Создать'
	Тогда открылось окно 'Файл (создание)'
	И я выбираю файл "$КаталогПроекта$\features\Финальные задания\Задание 1\Картинка1.jpg"
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И я запоминаю значение поля с именем "Код" как "КодКартинки"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Картинка1.jpg (Файл)' в течение 10 секунд
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       	  | 'Наименование'  |
		| '$КодКартинки$' | 'Картинка1.jpg' |
	И в таблице "Список" я выбираю текущую строку
	Тогда элемент формы с именем "ФайлКартинки" стал равен 'Картинка1.jpg'
		

		
		
		
			

	


