
Перем КаталогФайлов;
Перем КаталогСервера;

Функция КаталогЗагрузок() Экспорт
	Возврат ОбъединитьПути(КаталогФайлов(), "download");
КонецФункции

Функция КаталогВерсий() Экспорт
	Возврат ОбъединитьПути(КаталогЗагрузок(), "versions");
КонецФункции

Функция КаталогПримеров() Экспорт
	Возврат ОбъединитьПути(КаталогФайлов(), "common");
КонецФункции

Функция КаталогФайлов() Экспорт
	Возврат ОбъединитьПути(ТекущийКаталог(), КаталогФайлов);
КонецФункции

Функция КаталогДокументации() Экспорт
	Возврат ОбъединитьПути(КаталогФайлов(), "markdown");
КонецФункции

Функция КаталогСервера() Экспорт
	Возврат ОбъединитьПути(ТекущийКаталог(), КаталогСервера);
КонецФункции

Функция КаталогФронтенда() Экспорт
	Возврат ОбъединитьПути(КаталогСервера(), "wwwroot");
КонецФункции


&Желудь
Процедура ПриСозданииОбъекта(
	&Деталька(Значение = "filesDir") КонфигКаталогФайлов,
	&Деталька(Значение = "server.rootDir") КонфигКаталогСервера)
	
	КаталогФайлов = КонфигКаталогФайлов;
	КаталогСервера = КонфигКаталогСервера;

КонецПроцедуры