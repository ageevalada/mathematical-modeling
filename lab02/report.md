---
# Front matter
title: "Отчёт по лабораторной работе №2"
subtitle: "Задача о погоне - вариант 37"
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

Целью данной работы является решение задачи о погоне. 

# Выполнение лабораторной работы

## Условие задачи 
Приведем один из примеров построения математических моделей для
выбора правильной стратегии при решении задач поиска.
Вариант 25
На море в тумане катер береговой охраны преследует лодку браконьеров.
Через определенный промежуток времени туман рассеивается, и лодка
обнаруживается на расстоянии 12,3 км от катера. Затем лодка снова скрывается в
тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость
катера в 4,4 раза больше скорости браконьерской лодки.

## Постановка задачи
1. Запишите уравнение, описывающее движение катера, с начальными
условиями для двух случаев (в зависимости от расположения катера
относительно лодки в начальный момент времени).
2. Постройте траекторию движения катера и лодки для двух случаев.
3. Найдите точку пересечения траектории катера и лодки

## 1. Уравнение, описывающее движение катера
1. Принимает за t~0~ = 0 , x~л0~ = 0 - место нахождения лодки браконьеров в момент обнаружения, 
x~к0~ = k - место нахождения катера береговой охраны относительно лодки браконьеров в момент обнаружения лодки.

2. Введем полярные координаты. Считаем, что полюс - это точка обнаружения лодки браконьеров x~л0~ ($\theta$ = x~л0~ = 0), 
а полярная ось r проходит через точку нахождения катера береговой охраны.

3. Траектория катера должна быть такой, чтобы и катер, и лодка все время были на одном расстоянии от полюса $\theta$,
только в этом случае траектория катера пересечется с траекторией лодки. Поэтому для начала катер 
береговой охраны должен двигаться некоторое время прямолинейно, пока не окажется на том же расстоянии 
от полюса, что и лодка браконьеров. После этого катер береговой охраны должен 
двигаться вокруг полюса удаляясь от него с той же скоростью, что и лодка браконьеров.

4. Чтобы найти расстояние x (расстояние после которого катер начнет двигаться вокруг полюса), 
необходимо составить простое уравнение. Пусть через время t катер и лодка окажутся на 
одном расстоянии x от полюса. Пусть скорость катера больше скорости лодки в n раз. 
За это время лодка пройдет x , а катер k - x (или k + x , в зависимости от начального 
положения катера относительно полюса). Время, за которое они пройдут это расстояние, 
вычисляется как x / v или (k - x) / nv  (во втором случае (x + k ) / nv). 
Так как время одно и то же, то эти величины одинаковы. Тогда неизвестное расстояние x можно найти из следующего уравнения: 
$x/v =(k- x)/nv$
в первом случае или 
$x/v=(k + x)/nv$ во втором. 
Отсюда мы найдем два значения $x1(n+1) = k$;  $x1 = k/(n+1)$ и $x2(n-1) = k$;  $x2 = k/(n-1)$, задачу будем решать для двух случаев.

5. После того, как катер береговой охраны окажется на одном расстоянии от полюса,
что и лодка, он должен сменить прямолинейную траекторию и начать двигаться 
вокруг полюса удаляясь от него со скоростью лодки v. 
Для этого скорость катера раскладываем на две составляющие: vr - радиальная скорость и $v~\tau~$ - тангенциальная скорость. 
Радиальная скорость - это скорость, с которой катер удаляется от полюса, vr = dr/d$\tau$. 
Нам нужно, чтобы эта скорость была равна скорости лодки, поэтому полагаем v = dr/d$\tau$. 
Тангенциальная скорость – это линейная скорость вращения катера относительно полюса. 
Она равна произведению угловой скорости d$\theta$/d$\tau$ на радиус r, v$\tau$ = rd$\theta$/d$\tau$

По теореме Пифагора: $v~r~= $\sqrt{n^2 v^2-v^2}=\sqrt{n^2-1}v$  
(учитывая, что радиальная скорость равна v). Тогда получаем d$\theta$/d$\tau$  $r =\sqrt{n^2-1}v$ 

6.	Решение исходной задачи сводится к решению системы из двух дифференциальных уравнений 
$$
 \begin{cases}
   \frac{dr}{dt}=v
	\\   
	r\frac{d\theta}{dt}=v\sqrt{n^2-1}
 \end{cases}
$$
с начальными условиями

$$
 \begin{cases}
   \theta_0=0
   \\
	r_0=\frac{k}{n+1}
 \end{cases}
\
$$

$$
 \begin{cases}
   \theta_0=-\pi
   \\
	r_0=\frac{k}{n-1}
 \end{cases}
\
$$
Исключая из полученной системы производную по t, можно перейти к следующему уравнению: $\frac{dr}{d\theta}=\frac{r}{\sqrt{n^2-1}}$

Начальные условия остаются прежними. Решив это уравнение, мы получим
траекторию движения катера в полярных координатах. 
Теперь, когда нам известно все, что нам нужно, построим траекторию движения катера и лодки для двух случаев. 

## 2. Построение траекторий движения катера и лодки для двух случаев.

Код в Scilab для 1го случая

s=12,3;// начальное расстояние от лодки до катера

fi=3*%pi/4;

n = 4,4;

//функция, описывающая движение катера береговой охраны

function dr=f(tetha, r)

dr=r/sqrt(n*n - 1);

endfunction;

//начальные условия в случае 1

r0=s/(n+1);

tetha0=0;

tetha=0:0.01:2*%pi;

r=ode(r0,tetha0,tetha,f);

//функция, описывающая движение лодки браконьеров

function xt=f2(t)

xt=tan(fi)*t;

endfunction

t=0:1:800;

polarplot(tetha,r,style = color('green')); //построение траектории

движения катера в полярных координатах

plot2d(t,f2(t),style = color('red'));


![траектории для случая 1](images/1.png){ #fig:001 width=70% height=70% }

Код в Scilab для 2го случая

s=12,3;// начальное расстояние от лодки до катера

fi=3*%pi/4;

n = 4,4;

//функция, описывающая движение катера береговой охраны

function dr=f(tetha, r)

dr=r/sqrt(n*n - 1);

endfunction;

//начальные условия в случае 2

r0=s/(n-1);

tetha0=-%pi;

tetha=0:0.01:2*%pi;

r=ode(r0,tetha0,tetha,f);

//функция, описывающая движение лодки браконьеров

function xt=f2(t)

xt=tan(fi)*t;

endfunction

t=0:1:800;

polarplot(tetha,r,style = color('green')); //построение траектории

движения катера в полярных координатах

plot2d(t,f2(t),style = color('red'));


![траектории для случая 2](images/2.png){ #fig:001 width=70% height=70% }

## 3. Точки пересечения траектории катера и лодки
### Случай 1
Точка пересечения красного и зеленого графиков - точка пересечения катера и лодки, исходя из графика, имеет координаты
$$
 \begin{cases}
   \theta=315
   \\
	r=10
 \end{cases}
\
$$

### Случай 2
Точка пересечения красного и зеленого графиков - точка пересечения катера и лодки, исходя из графика, имеет координаты
$$
 \begin{cases}
   \theta=315
   \\
	r=37
 \end{cases}
\
$$

# Вывод

В ходе выполнения работы я приобрела практические навыки решения задачи о погоне. Провела анализ и вывод дифференциальных уравнений, а также смоделировала ситуацию.

