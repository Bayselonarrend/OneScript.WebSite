---
outline: [2, 3]
---

# СтрокаДереваЗначений / ValueTreeRow


Строка дерева значений.


## Свойства


### Родитель / Parent

* Чтение: Да
* Запись: Нет

### Строки / Rows

* Чтение: Да
* Запись: Нет

## Методы


### Владелец / Owner


Возвращает дерево значений, в которе входит строка.


#### Возвращаемое значение


ДеревоЗначений. Владелец строки.


### Получить / Get


Получает значение по индексу.


#### Параметры

* **index**: Число. Индекс получаемого параметра.

#### Возвращаемое значение


Произвольный. Получаемое значение.


### Установить / Set


Устанавливает значение по индексу.


#### Параметры

* **index**: Число. Индекс параметра, которому задаётся значение.
* **value**: Произвольный. Новое значение.

### Уровень / Level


Возвращает уровень вложенности строки в дереве.
Строки верхнего уровня имеют значение 0.


#### Возвращаемое значение


Число. Уровень вложенности строки.

