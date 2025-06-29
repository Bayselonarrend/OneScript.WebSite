---
outline: [2, 3]
---

# HTTPСоединение / HTTPConnection


Объект доступа к протоколу HTTP/HTTPS.
Использует семантику методов, реализованных в платформе 1С:Предприятие 8.2.18 и старше.
Синтаксис методов, применявшийся в более младших версиях не поддерживается.
Средства работы с HTTP находятся в статусе experimental.


## Свойства


### ИспользоватьАутентификациюОС / UseOSAuthentication

* Чтение: Да
* Запись: Нет

### Пользователь / User

* Чтение: Да
* Запись: Нет

### Пароль / Password

* Чтение: Да
* Запись: Нет

### Сервер / Host

* Чтение: Да
* Запись: Нет

### Порт / Port

* Чтение: Да
* Запись: Нет

### Прокси / Proxy

* Чтение: Да
* Запись: Нет

### Таймаут / Timeout

* Чтение: Да
* Запись: Нет

### РазрешитьАвтоматическоеПеренаправление / AllowAutoRedirect

* Чтение: Да
* Запись: Да

## Методы


### Получить / Get


Получить данные методом GET


#### Параметры

* **request**: HTTPЗапрос. Данные и заголовки запроса http
* **output**: Строка. Имя файла, в который нужно записать ответ. Необязательный параметр. *Необязательный*. 

#### Возвращаемое значение


HTTPОтвет. Ответ сервера.


### Записать / Put


Передача данных методом PUT


#### Параметры

* **request**: HTTPЗапрос. Данные и заголовки запроса http

#### Возвращаемое значение


HTTPОтвет. Ответ сервера.


### ОтправитьДляОбработки / Post


Передача данных методом POST


#### Параметры

* **request**: HTTPЗапрос. Данные и заголовки запроса http
* **output**: Строка. Имя файла, в который нужно записать ответ. Необязательный параметр. *Необязательный*. 

#### Возвращаемое значение


HTTPОтвет. Ответ сервера.


### Удалить / Delete


Удалить данные методом DELETE


#### Параметры

* **request**: HTTPЗапрос. Данные и заголовки запроса http

#### Возвращаемое значение


HTTPОтвет. Ответ сервера.


### Изменить / Patch


Изменяет данные на сервере при помощи PATCH-запроса


#### Параметры

* **request**: HTTPЗапрос. Данные и заголовки запроса http

#### Возвращаемое значение


HTTPОтвет. Ответ сервера.


### ПолучитьЗаголовки / Head


Получает при помощи HEAD-запроса информацию о запрошиваемых данных, содержащуюся в заголовках, не получая сами данные.


#### Параметры

* **request**: HTTPЗапрос. Данные и заголовки запроса http

#### Возвращаемое значение


HTTPОтвет. Ответ сервера.


### ВызватьHTTPМетод / CallHTTPMethod


Вызвать произвольный HTTP-метод


#### Параметры

* **method**: Строка. Имя метода HTTP
* **request**: HTTPЗапрос. Данные и заголовки запроса http
* **output**: Строка. Имя выходного файла *Необязательный*. 

#### Возвращаемое значение


HTTPОтвет. Ответ сервера.


## Конструкторы


### По указанному серверу


Стандартный конструктор. Поддержка клиентских сертификатов HTTPS в текущей версии не реализована.
Для доступа к серверу по протоколу HTTPS указывайте схему https:// в URL.


#### Параметры

* **host**: Адрес сервера (можно указать URL-схему http или https)
* **port**: Порт сервера *Необязательный*. Значение по умолчанию: 0
* **user**: Пользователь *Необязательный*. 
* **password**: Пароль *Необязательный*. 
* **proxy**: ИнтернетПрокси. Настройки прокси-сервера *Необязательный*. 
* **timeout**: Таймаут ожидания. *Необязательный*. Значение по умолчанию: 0
* **ssl**: Объект ЗащищенноеСоединение. На данный момент данная механика работы с SSL не поддерживается. 
            Обращение к https возможно, если в адресе хоста указать протокол https. В этом случае будут использованы сертификаты из хранилища ОС.
            Указание произвольных клиентских и серверных сертификатов в текущей версии не поддерживается. *Необязательный*. 
* **useOSAuthentication**: Использовать аутентификацию ОС. *Необязательный*. Значение по умолчанию: False
