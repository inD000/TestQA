﻿#language: ru

@tree

Функционал: Подготовка данных для тестирования документа Заказ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание объектов для справочника Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c98' | 'False'           | '000000999' | 'Организация 1 (вал)' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c99' | 'False'           | '000000998' | 'Организация 2'       | 'False'        |

Сценарий: Создание объектов для справочника Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'                 | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea69b' | 'False'           | '000000999' | 'Склад 1 (используется)'       | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=8e0a000d8843cd1b11de0ed853793997' | 'False'           | '000000998' | 'Склад 2 (не используется)'    | 'True'           |

Сценарий: Создание объектов для справочника Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'ЭтоГруппа' | 'Код'       | 'Наименование'                   | 'ВидЦен'                                           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4255' | 'False'           | 'False'     | '000000999' | 'Контрагент 1 (Закупочная цена)' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная' |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4256' | 'False'           | 'False'     | '000000998' | 'Контрагент 1 (Без вида цен)'    |                                                    |

Сценарий: Создание объектов для справочника Номенклатура

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Вид'                     |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710099' | 'False'           | 'False'     | '000000999' | 'Товар'        | 'Enum.ВидыТоваров.Товар'  |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710098' | 'False'           | 'False'     | '000000998' | 'Услуга'       | 'Enum.ВидыТоваров.Услуга' |

Сценарий: Создание объектов для справочника ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 'False'           | '000000999' | 'Закупочная'   |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000998' | 'Розничная'    |

Сценарий: Создание объектов для справочника Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c7' | 'False'           | '000000999' | 'RUB'          |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4228' | 'False'           | '000000998' | 'USD'          |

Сценарий: Создание записей для регистра сведений КурсыВалют

	И я проверяю или создаю для регистра сведений "КурсыВалют" записи:
		| 'Период'             | 'Валюта'                                                            | 'Курс' |
		| '01.01.1980 0:00:00' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c7' | 1      |
		| '01.01.1980 0:00:00' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4228' | 75     |

Сценарий: Перезаполнение константы ВалютаУчета значением

	// RUB
	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c7"

Сценарий: Перезаполнение константы УчетПоСкладам значением

	И я перезаполняю константу "УчетПоСкладам" значением "True"	