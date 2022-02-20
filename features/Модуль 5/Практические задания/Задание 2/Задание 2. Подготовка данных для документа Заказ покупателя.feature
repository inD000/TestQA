#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Подготовка данных для документа Заказ покупателя

Сценарий: Подготовка данных для документа Заказ покупателя

	И я проверяю или создаю для справочника "Companies" объекты:
		| 'Ref'                                                               | 'Code' | 'Description_ru' | 'Type'                          | 'OurCompany' |
		| 'e1cib/data/Catalog.Companies?ref=b762913668d0905011eb7663e38d7964' | 111    | 'Компания 1'     | 'Enum.CompanyLegalType.Company' | 'True'       | 

	И я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'Code' | 'Description_ru'                 | 'Type'                         | 'ApArPostingDetail'                   |
		| 'e1cib/data/Catalog.Agreements?ref=9c14a85e4856d23411ec9275058034a0' | 222    | 'Соглашение без организации 222' | 'Enum.AgreementTypes.Customer' | 'Enum.ApArPostingDetail.ByAgreements' |

