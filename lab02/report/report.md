---
# Front matter
lang: ru-RU
title: "Отчет по лабораторной работе №2"
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

Рассмотреть один из примеров построения математических моделей для выбора правильной стратегии при решении задач поиска.

# Задание

## Провести рассуждения и вывод дифференциальных уравнений по условию заданной задачи 
## Построение траектории движения катера и лодки для двух случаев
## Нахождение точки пересечения траектории катера и лодки 

# Выполнение лабораторной работы

## Рассуждения и вывод дифференциальных уравнений по условию заданной задачи 

- Вариант 52. На море в тумане катер береговой охраны преследует лодку браконьеров.
Через определенный промежуток времени туман рассеивается, и лодка
обнаруживается на расстоянии 17,4 км от катера. Затем лодка снова скрывается в
тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость
катера в 4,9 раза больше скорости браконьерской лодки.

1. Принимаем за $t_{0}=0, x_{л0}=0$ - место нахождения лодки браконьеров в момент обнаружения, $x_{к0}=k$ - место нахождения катера береговой охраны относительно лодки браконьеров в момент обнаружения лодки.

2. Введем полярные координаты. Считаем, что полюс - это точка обнаружения лодки браконьеров $x_{л0}(\theta =x_{л0}=0)$, а полярная ось r проходит через точку нахождения катера береговой охраны

3. Траектория катера должна быть такой, чтобы и катер, и лодка все время были на одном расстоянии от полюса $\theta$, только в этом случае траектория катера пересечется с траекторией лодки. Поэтому для начала катер береговой охраны должен двигаться некоторое время прямолинейно, пока не окажется на том же расстоянии от полюса, что и лодка браконьеров. После этого катер береговой охраны должен двигаться вокруг полюса удаляясь от него с той же скоростью, что и лодка браконьеров.

4. Чтобы найти расстояние x (расстояние, после которого катер начнет двигаться вокруг полюса), необходимо составить простое уравнение. Пусть через время t катер и лодка окажутся на одном расстоянии x от полюса. За это время лодка пройдет x, а катер $k-x$ (или $k+x$, в зависимости от начального положения катера относительно полюса). Время, за которое они пройдут это расстояние, вычисляется как $\frac{x}{v}$ или $\frac{k-x}{4,9v}$ (во втором случае $\frac{x+k}{4,9v}$). Так как время одно и то же, то эти величины одинаковы. Тогда неизвестное расстояние x можно найти из следующего уравнения:
$\frac{x}{v}=\frac{k-x}{4,9v}$ в первом случае или $\frac{x}{v}=\frac{k+x}{4,9v}$ во втором. Отсюда мы найдем два значения $x_{1}=\frac{k}{5,9}$ и $x_{2}=\frac{k}{3,9}$, задачу будем решать для двух случаев.

5. После того, как катер береговой охраны окажется на одном расстоянии от полюса, что и лодка, он должен сменить прямолинейную траекторию и начать двигаться вокруг полюса, удаляясь от него со скоростью лодки v. Для этого скорость катера раскладываем на две составляющие: $v_{r}$ - радиальная скорость и $v_{\tau}$ - тангенциальная скорость. (рис. -@fig:001)

![Вычисления 1](image\1.jpg){ #fig:001 width=50% }

Радиальная скорость - это скорость, с которой катер удаляется от полюса, $v_{r}=\frac{\text{d}r}{\text{d}t}$. Нам нужно, чтобы эта скорость была равна скорости лодки, поэтому полагаем $\frac{\text{d}r}{\text{d}t}=v$. Тангенциальная скорость – это линейная скорость вращения катера относительно полюса. Она равна произведению угловой скорости $\frac{\text{d}\theta}{\text{d}t}$ на радиус r, $v_{\tau}=r\frac{\text{d}\theta}{\text{d}t}$. Из рисунка видно: $v_{\tau}=\sqrt{24,01v^{2}-v^{2}}=\sqrt{23,01}v$ (учитывая, что радиальная скорость равна v). Тогда получаем $r\frac{\text{d}\theta}{\text{d}t}=\sqrt{23,01}v$.

6. Решение исходной задачи сводится к решению системы из двух дифференциальных уравнений $\begin{cases} \frac{\text{d}r}{\text{d}t} = v\\ r\frac{\text{d}\theta}{\text{d}t} = \sqrt{23,01}v\end{cases}$ с начальными условиями $\begin{cases} \theta_{0}=0\\ r_{0}=x_{1}\end{cases}$ или $\begin{cases} \theta_{0}=-\pi\\ r_{0}=x_{2}\end{cases}$. Исключая из полученной системы производную по t, можно перейти к следующему уравнению: $\frac{\text{d}r}{\text{d}\theta}=\frac{r}{\sqrt{23,01}}$ Начальные условия остаются прежними. Решив это уравнение, я получу траекторию движения катера в полярных координатах. (рис. -@fig:002)

![Вычисления 2](image\2.jpg){ #fig:002 width=50% }

![Вычисления 3](image\3.jpg){ #fig:002 width=50% }

## Построение траектории движения катера и лодки для двух случаев 

Для начала задам расстояние своего варинта k=17.4 и константу $fi=\frac{3 \pi}{4}$. (рис. -@fig:003)

![Начало кода](image\4.png){ #fig:003 width=50% }

Следующие строки описывают движение береговой охраны. (рис. -@fig:004)

![Движение береговой охраны](image\5.png){ #fig:004 width=70% }

Первый случай. (рис. -@fig:005)

![Случай 1](image\6.png){ #fig:005 width=50% }

Решение для первого случая.(рис. -@fig:006)

![Решение 1](image\7.png){ #fig:006 width=50% }

Второй случай. (рис. -@fig:007)

![Случай 2](image\8.png){ #fig:007 width=50% }

Решение для второго случая.(рис. -@fig:008)

![Решение 2](image\9.png){ #fig:008 width=50% }

Движение браконьеров. (рис. -@fig:009)

![Движение браконьеров](image\10.png){ #fig:009 width=50% }

Декартовые координаты в полярные. Перевод. (рис. -@fig:010)

![Перевод координат](image\11.png){ #fig:010 width=50% }

Строим графики. (рис. -@fig:011)

![Код графиков](image\12.png){ #fig:011 width=50% }

## Нахождение точки пересечения траектории катера и лодки 

Нахождение точки пересечения двух графиков. (рис. -@fig:012)

![Код точки пересечения](image\13.png){ #fig:012 width=50% }

Вывод для первого случая. (рис. -@fig:013)

![Точка пересечения. Случай 1](image\14.png){ #fig:013 width=50% }

Вывод для второго случая. (рис. -@fig:014)

![Точка пересечения. Случай 2](image\15.png){ #fig:014 width=50% }

# Выводы

В процессе я рассмотрела один из примеров построения математических моделей для выбора правильной стратегии при решении задач поиска, а также научилась определять, по какой траектории необходимо двигаться катеру, чтобы догнать лодку.

