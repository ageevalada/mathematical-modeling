---
# Front matter
title: "Отчёт по лабораторной работе №1"
subtitle: "Система контроля версий Git"
author: "Агеева Лада НПИбд-01-19"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является изучение и освоение системы контроля версий Git

# Выполнение лабораторной работы

## Подготовка 

Изменение параметров установки окончаний строк и Установка отображения unicode

![Подготовка](images/1.1.png){ #fig:001 width=70% height=70% }

## Создаем локальный проект
 Создаем страницу «Hello, World»
 Созданем репозиторий
 Добавляем файл в репозиторий
 Проверяем состояние репозитория
 
![Создание проекта](images/1.2.png){ #fig:002 width=70% height=70% }

## Внесение изменений
Изменяем страницу «Hello, World»

![Внесение изменений](images/1.3.png){ #fig:003 width=70% height=70% }

## Индексация изменений
 Коммитим изменения
 Добавляем стандартные теги страницы
 Проверяем список произведенных изменений
 Получяем старые версии
 Создаем теги версий
 Переключаемся по имени тега
 Просмотриваем теги с помощью команды tag
 
![Индексация изменений 1](images/1.4.1.png){ #fig:004 width=70% height=70% }

![Индексация изменений 2](images/1.4.2.png){ #fig:005 width=70% height=70% }

![Индексация изменений 3](images/1.4.3.png){ #fig:006 width=70% height=70% }

## Отмена локальных изменений (до индексации)
Переключаемся на ветку master
Изменяем hello.html
Проверяем состояние
Отменяем изменения в рабочем каталоге

![Отмена локальных изменений](images/1.5.png){ #fig:007 width=70% height=70% }

## Отмена проиндексированных изменений (перед коммитом)
Изменяем файл и проиндексируем изменения
Проверяем состояние
Выполняем сброс буферной зоны
Переключяемся на версию коммита

![Отмена проиндексированных изменений](images/1.6.png){ #fig:008 width=70% height=70% }

## Отмена коммитов
Изменяем файл и сделаем коммит
Сделаем коммит с новыми изменениями, отменяющими предыдущие
Проверим лог

![Отмена коммитов](images/1.7.png){ #fig:009 width=70% height=70% }

## Удаление коммиттов из ветки
Проверяем нашу историю
Отмечаем эту ветку
Сбрасываем коммиты к предшествующим коммиту Oops

![Удаление коммиттов из ветки](images/1.8.png){ #fig:010 width=70% height=70% }

## Удаление тега oops
Удаляем тег oops

![Удаление тега oops](images/1.9.png){ #fig:011 width=70% height=70% }

## Внесение изменений в коммиты
Изменяем страницу, а затем сделаем коммит
Добавляем email
Изменяем предыдущий коммит
Просматриваем историю

![Внесение изменений в коммиты](images/1.10.png){ #fig:012 width=70% height=70% }

## Перемещение файлов
Перемещаем файл hello.html в каталог lib
Делаем коммит этого перемещения

![Перемещение файлов](images/1.11.png){ #fig:013 width=70% height=70% }

## Добавление index.html
Добавляем файл index.html в наш репозиторий

## Git внутри: Каталог .git
Углубимся в базу данных объектов

![Git внутри: Каталог .git](images/1.13-14.png){ #fig:014 width=70% height=70% }

## Работа непосредственно с объектами git
Найдем последний коммит
Выводем последний коммит с помощью SHA1 хэша
Выводем дерево каталогов
Выводем каталог lib
Выводем файл hello.html

![Работа непосредственно с объектами git](images/1.15.png){ #fig:015 width=70% height=70% }

## Создание ветки
Создаем ветку
Добавляем файл стилей style.css
Изменяем основную страницу
Изменяем index.html

![Создание ветки](images/1.16.png){ #fig:016 width=70% height=70% }

## Навигация по веткам
Переключимся на ветку master
Вернемся к ветке style

![Навигация по веткам](images/1.17.png){ #fig:017 width=70% height=70% }

## Изменения в ветке master
Создаем файл README в ветке master

## Сделайте коммит изменений README.md в ветку master.
Просмотрим отличающиеся ветки

![Изменения в ветке master](images/1.18-19.png){ #fig:018 width=70% height=70% }

## Слияние
Выполним слияние веток

![Слияние](images/1.20.png){ #fig:019 width=70% height=70% }

## Создание конфликта
Вернемся в master и создадим конфликт
Выполним Просмотр веток

![Создание конфликта](images/1.21.png){ #fig:020 width=70% height=70% }

## Разрешение конфликтов
Возвращаемся к ветке style и попытаемся объединить ее с новой веткой master
Решаем конфликт
Сделаем коммит решения конфликта

![Разрешение конфликтов](images/1.22.png){ #fig:021 width=70% height=70% }

## Сброс ветки style
Вернемся на ветке style к точке перед тем, как слили ее с веткой master
Сбросим ветку style к коммиту перед слиянием с master

![Сброс ветки style](images/1.23.png){ #fig:022 width=70% height=70% }

## Сброс ветки master
Сбрасываем ветку master

![Сброс ветки master 1](images/1.24.1.png){ #fig:023 width=70% height=70% }

![Сброс ветки master 2](images/1.24.2.png){ #fig:024 width=70% height=70% }

## Перебазирование
Используем команду rebase вместо команды merge

![Перебазирование](images/1.25.png){ #fig:025 width=70% height=70% }

## Слияние в ветку master

![Слияние в ветку master](images/1.26.png){ #fig:026 width=70% height=70% }

## Клонирование репозиториев
Перейдем в рабочий каталог
Создим клон репозитория hello

## Просмотр клонированного репозитория
Взглянем на клонированный репозиторий
Просмотрим историю репозитория

![Клонирование репозиториев и Просмотр клонированного репозитория](images/1.27-28.png){ #fig:027 width=70% height=70% }

## Что такое origin?

## Удаленные ветки
Выведем список удаленных веток

## Изменение оригинального репозитория
Внесем изменения в оригинальный репозиторий hello
Извлечем изменения

![origin, Удаленные ветки, Изменение оригинального репозитория](images/1.29-31.png){ #fig:028 width=70% height=70% }

 ## Слияние извлеченных изменений
Сольем извлеченные изменения в локальную ветку master
Проверим файл README.md

## Добавление ветки наблюдения
Добавим локальную ветку, которая отслеживает удаленную ветку

## Чистые репозитории
Создадим чистый репозиторий

## Добавление удаленного репозитория

## Отправка изменений

![Слияние извлеченных изменений, Добавление ветки наблюдения, Добавление чистого репозитория, Отправка изменений](images/1.32-37.png){ #fig:029 width=70% height=70% }

## Извлечение общих изменений

![Извлечение общих изменений](images/1.38.png){ #fig:030 width=70% height=70% }


# Вывод

В ходе выполнения работы я приобрела практические навыки работы с системой контроля версий git и создала свой репозиторий

# Список литературы {.unnumbered}

1. [Основы Git](https://habr.com/ru/post/583478/)
2. [Руководство по оформлению Markdown файлов](https://gist.github.com/Jekins/2bf2d0638163f1294637)