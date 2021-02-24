---
# Front matter
lang: ru-RU
title: "Отчет по лабораторной работе №3"
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

Рассмотреть простейшие примеры модели боевых действий для двух случаев. 

# Задание

## Составить уравнения для модели боевых действий и написать программу
## Построить графики изменения численности войск армии Х и армии У для двух случаев


# Выполнение лабораторной работы

## Составить уравнения для модели боевых действий и написать программу

- Вариант 52. (рис. -@fig:001)

![Поставленная задача](image\0.png){ #fig:001 width=80% }

Применяю формулы, которые даны в условии задачи и использую Modelica для составления программного кода. 
Код срабатывает и на выходе дает графики, которые нужно найти по условию задачи. Рассмотрены 2 случая модели боевых действий. 

Первый случай - модель боевых действий между регулярными войсками (рис. -@fig:002)

![Первый случай](image\1.png){ #fig:002 width=70% }

Второй случай - Модель ведения боевых действий с участием регулярных войск и партизанских отрядов (рис. -@fig:003)

![Второй случай](image\1a.png){ #fig:003 width=70% }

## Построение графиков изменения численности войск армии Х и армии У для двух случаев

Созданный код для первого и второго случая дал на выходе графики изменения численности войск 
армии X и армии Y (рис. -@fig:004)

![График для первого случая](image\2.png){ #fig:004 width=70% }

![График для второго случая](image\3.png){ #fig:004 width=70% }

# Выводы

В процессе я рассмотрела простейшие примеры модели боевых действий, а также построила графики для двух случаев.

