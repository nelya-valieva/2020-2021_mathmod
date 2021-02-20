---
# Front matter
lang: ru-RU
title: "Отчет по лабораторной работе"
author: "Валиева Найля Разимовна"

# Formatting
toc-title: "Содержание"
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
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

Цель работы - познакомиться с веб-сервисом IT-проектов и их совместной разработки GitHub. А также с языком разметки Markdown для создания файлов. 
Научиться отправлять файлы из терминала в GitHub и конвертировать файл формата md в и docx.

# Задание

## Создать рабочее пространство
## Создание репозитория
## Настройка Git Bash
## Настройка SSH-ключей
## Выложить README файл на GitHub
## Создать отчет по выполненной работе в Markdown 


# Выполнение лабораторной работы

## Создала рабочее пространство для лабараторной работы на компьютере (рис. -@fig:001)

![Рабочее пространство](image/0.png){ #fig:001 width=70% }

## Создала репозиторий на GitHub (рис. -@fig:002)

![Создание репозитория](image/1.png){ #fig:002 width=70% }

## Настроила Git Bash (рис. -@fig:003)

![Базовая настройка](image/1a.png){ #fig:003 width=70% }

## Настроила SSH-ключи (рис. -@fig:004)

![Настройка ключей](image/1b.png){ #fig:004 width=70% }

## Выложила README файл на GitHub (рис. -@fig:005)

![README файл на GitHub](image/2.png){ #fig:005 width=70% }

![README файл на GitHub](image/3.png){ #fig:005 width=70% }

## Создала отчет по выполненной работе в Markdown (рис. -@fig:006)

![Копирование шаблона для создания отчета](image/4.png){ #fig:006 width=70% }

![Процесс создания отчета](image/5.png){ #fig:006 width=70% }

# Выводы

Познакомилась с веб-сервисом IT-проектов и их совместной разработки GitHub. А также с языком разметки Markdown для создания файлов.
Научилась выкладывать файлы на GitHub через терминал и конвертировать Markdown файлы формата md в pdf и word.
