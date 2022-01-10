# Модуль 3: Визуализация данных, дашборды и отчетность - Business Intelligence. Практика.

:heavy_check_mark: Установить Tableau Desktop   
:heavy_check_mark: Создать себе аккаунт на Tableau Public: [Denis](https://public.tableau.com/app/profile/ramis6690)   
:heavy_check_mark: Подключиться к БД Postgres и нарисовать дашборд SuperStore Dataset в Tableau Desktop: [SuperstoreMetrics](https://public.tableau.com/app/profile/ramis6690/viz/SuperstoreMetrics_16401616350250/Superstoremetrics)     
![Alt-](https://github.com/Denis-DL/data-engineering/blob/master/homework/DE101-Module3/Superstore%20metrics.png) 



## *3.9 Знакомство с BI Tableau Сервером (обзор Tableau Server)

### *Практика
В данном упражнении вам необходимо будет скачать и установить Tableau Сервер. Как вы поняли из видео, вам необходимо минимум 8 Гб оперативки (если ставить на Windows без виртуальной машины) и 16 Гб (если использовать виртуальную машину). 

1. Вы скачиваете Tableau Server [отсюда](https://www.tableau.com/support/releases/server). Можно версию 2018.1 если ограничения по оперативной памяти. Более свежая версия требует минимум 16 Гб.
2. Вы устанавливаете Tableau Server на Windows (можно использовать Windows 10 или Windows Server, главное 64x бит)
3. После установки заходите в него через браузер.
4. Если вы используете виртуальную машину, то вам необходимо настроить сетевой адаптер виртуальной машины, чтобы машины могли между собой соединяться. Я загрузил [PDF файл](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module03/DE%20-%20101%20Lab%203.1/Vmware%20network%20example.pdf), про который рассказывал в видео. Если будут трудности с настройкой, пишите в slack канале 3го модуля.
5. Используя свой дашборд, который вы построили в Tableau Desktop на базе Postgres, загрузите его в Tableau Server 2 раза. 1й раз как `Live Connection`, 2ой раз как `Tableau Extract`. Попробуйте понять в чем разница.
6. Установите tabcmd там же, где и клиент Tableau и попробуйте обновить экстракт и скачать PDF файл дашборда.
7. Хотите больше? Попробуйте использовать [TabPy](https://github.com/tableau/TabPy) для Tableau Desktop/Server.

Если совсем все плохо, тогда оставайтесь с Tableau Public.

## *3.12 Требования к BI разработчику/инженеру

### *Практика
1. Используя систему STAR попробуйте описать несколько кейсов из вашего BI опыта. 
2. На сайте HH.ru или Indeed сделайте себе еженедельную рассылку на интересные вам вакансии (изучайте рынок заранее).
3. Хотите удивить работодателя своим резюме? Сделайте его в git, используя markdown как в [примере](https://elipapa.github.io/markdown-cv/) или опубликуйте в Tableau Public, как в [примере](https://public.tableau.com/en-us/s/interactive-resume-gallery).


## Финальный проект для модуля 3: Аналитика по данным Airbnb London

:heavy_check_mark: создать аналитический инструмент Airbnb в Лондоне. Для того, чтобы снять новый объект нужно выбрать наиболее привлекательный район, а также сравнить конкретные объекты. Районы сравниваются по количеству объектов, средней стоимости сдачи и средней загрузки объектов в течение года. Также интересна аналитика в разрезе типа комнаты (room_type), количества спален и площади помещений. Аналитический инструмент должен давать ответ на вопрос в каком районе стоит снять помещение в первую очередь и проанализировать топовые предложения в районе, чтобы искать похожие объекты в аренду: [LondonAirbnbListings](https://public.tableau.com/app/profile/ramis6690/viz/LondonAirbnbListings/Dashboard2)   
![Alt-](https://github.com/Denis-DL/data-engineering/blob/master/homework/DE101-Module3/LondonAirbnbListings.png) 


