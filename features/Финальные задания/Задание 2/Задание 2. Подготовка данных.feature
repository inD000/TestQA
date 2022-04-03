﻿#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Подготовка данных для отчета Остатки товаров на складах

Сценарий: Подготовка данных для отчета Остатки товаров на складах

	И Я устанавливаю в константу "УчетПоСкладам" значение "True"

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'ЭтоГруппа' | 'Код'       | 'Наименование'   |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90e17cd1a8f9' | 'False'           | 'False'     | '000000999' | 'Тестовый товар' |

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'   | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e9' | 'False'           | '000000999' | 'Тестовый склад' | 'False'          |

	// Документ.ПриходТовара
	И я проверяю или создаю для документа "ПриходТовара" объекты:
		| 'Ссылка'                                                                | 'Номер'     | 'Дата'                |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b200055d49b45e11db9686bb360939' | '000000999' | '01.01.2022 00:00:00' |

	// Документ.РасходТовара
	И я проверяю или создаю для документа "РасходТовара" объекты:
		| 'Ссылка'                                                                | 'Номер'     | 'Дата'                |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fd8' | '000000999' | '02.01.2022 00:00:00' |

	И я проверяю или создаю для регистра накоплений "ТоварныеЗапасы" записи:
		| 'Регистратор'                                                           | 'Период'              | 'НомерСтроки' | 'Активность' | 'ВидДвижения' | 'Товар'                                                             | 'Склад'                                                             | 'Количество' |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b200055d49b45e11db9686bb360939' | '01.01.2022 00:00:00' | 1             | 'True'       | 'Приход'      | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90e17cd1a8f9' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e9' | 3            |
		| 'e1cib/data/Документ.РасходТовара?ref=bbf30050ba5c887711e1fe6190994fd8' | '02.01.2022 00:00:00' | 1             | 'True'       | 'Расход'      | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90e17cd1a8f9' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e9' | 1            |