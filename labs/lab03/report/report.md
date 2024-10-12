---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Кижваткина Анна Юрьевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt


## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
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
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"


## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Задание

    1. Установка необходимого ПО
    2. Заполнение отчёта по выполнению лабораторной работы №4 с помощью языка разметки Markdown.
    3. Задание для самостоятельной работы.
    
# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. [-@tbl:std-dir] приведено краткое описание стандартных каталогов Unix.

: Описание некоторых каталогов файловой системы GNU Linux {#tbl:std-dir}

| Имя каталога | Описание каталога                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `/`          | Корневая директория, содержащая всю файловую                                                                               |
| `/bin `      | Основные системные утилиты, необходимые как в однопользовательском режиме, так и при обычной работе всем пользователям     |
| `/etc`       | Общесистемные конфигурационные файлы и файлы конфигурации установленных программ                                           |
| `/home`      | Содержит домашние директории пользователей, которые, в свою очередь, содержат персональные настройки и данные пользователя |
| `/media`     | Точки монтирования для сменных носителей                                                                                   |
| `/root`      | Домашняя директория пользователя  `root`                                                                                   |
| `/tmp`       | Временные файлы                                                                                                            |
| `/usr`       | Вторичная иерархия для данных пользователя                                                                                 |

Более подробно про Unix см. в [@tanenbaum_book_modern-os_ru; @robbins_book_bash_en; @zarrelli_book_mastering-bash_en; @newham_book_learning-bash_en].

# Выполнение лабораторной работы

4.1 Установка необходимого ПО.
Устанавливаем ПО необходимое для выполнения данной лабораторной работы.

4.2 Заполнение отчёта по выполнению лабораторной работы №4 с помощью языка разметки Markdown.
Открываем терминал. Переходим в каталог курса сформированный при выполнении лабораторной работы №2. (рис. [-@fig:001])

![Перемещение между директориями](image/1.png){#fig:001 width=70%}

Обновляем локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды git pull. (рис. [-@fig:002])

![Обновление локального репозитория](image/2.png){#fig:002 width=70%}

Переходим в каталог с шаблоном отчета по лабораторной работе № 3 с помощью команды cd. (рис. [-@fig:003])

![Перемещение между директориями](image/3.png){#fig:003 width=70%}

Провеодим компиляцию шаблона с использованием Makefile. Для этого введим команду make. (рис. [-@fig:004])

![Компиляция шаблона](image/4.png){#fig:004 width=70%}

При успешной компиляции должны сгенерироваться файлы report.pdf и report.docx. Открываем и проверяем наличие и корректность полученных файлов. (рис. [-@fig:005] и рис. [-@fig:006])

![Открытие файла docx](image/5.png){#fig:005 width=70%}

![Открытие файла pdf](image/6.png){#fig:006 width=70%}

Удаляем полученные файлы с использованием Makefile. Для этого введим команду make clear. (рис. [-@fig:007])

![Удаление файлов](image/7.png){#fig:007 width=70%}

Проверяем правильность выполнения команды с помощью команды ls. (рис. [-@fig:008])

![Проверка правильности выполнения команды](image/8.png){#fig:008 width=70%}

Открываем файл report.md c помощью текстового редактора gedit. (рис. [-@fig:009])

![Открытие файла md](image/9.png){#fig:009 width=70%}

Заполняем отчет и компилируем его с использованием Makefile. Проверяем корректность полученных файлов. (рис. [-@fig:010] и рис. [-@fig:011])

![Заполнение отчёта](image/10.png){#fig:010 width=70%}

![Компиляция и проверка целостности файлов](image/11.png){#fig:011 width=70%}

Загружаем файлы на Github. (рис. [-@fig:012] и рис. [-@fig:013])

![Загрузка файла. команды git add и git commit](image/12.png){#fig:012 width=70%}

![Загрузка файла. команда git push](image/13.png){#fig:013 width=70%}

3.3 Задание для самостоятельной работы.

Переходим в директорию lab02/report с помощью команды cd, чтобы заполнить там отчёт по лабораторной работе №2. (рис. [-@fig:014])

![Перемещение между директориями](image/14.png){#fig:014 width=70%}

Открываем файл с помощью текстового редактора gedit и начинаем заполнять отчёт. (рис. [-@fig:015])

![Составление отчёта](image/15.png){#fig:015 width=70%}

Компилируем файл. (рис. [-@fig:016])

![Компиляция файла](image/16.png){#fig:016 width=70%}

Загружаем файлы на github. (рис. [-@fig:017] и рис. [-@fig:018])

![Загрузка файла. команды git add и git commit](image/17.png){#fig:017 width=70%}

![Загрузка файла. команда git push](image/18.png){#fig:018 width=70%}

# Выводы

В результате выполнения лабораторной работы №3 я освоила процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Список литературы{.unnumbered}

::: {#refs}
:::
