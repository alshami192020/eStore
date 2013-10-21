﻿delete from [dbo].[Books]
go
delete from [dbo].[Series]
go
delete from [dbo].[Authors]
go
delete from [dbo].[Genres]
go

delete from [dbo].[TopicCategories]
go
delete from [dbo].[Topics]
go
delete from [dbo].[Posts]
go


/* DATA */

set IDENTITY_INSERT [dbo].[Genres] ON
GO
insert into [dbo].[Genres] ([GenreId], [Title]) values (1, 'Poetry')
go
insert into [dbo].[Genres] ([GenreId], [Title]) values (2, 'Arts & Design')
go
insert into [dbo].[Genres] ([GenreId], [Title]) values (3, 'History')
go
insert into [dbo].[Genres] ([GenreId], [Title]) values (4, 'Philosofy')
go
insert into [dbo].[Genres] ([GenreId], [Title]) values (5, 'Science & Technology')
go
insert into [dbo].[Genres] ([GenreId], [Title]) values (6, 'Kid''s reading')
go
insert into [dbo].[Genres] ([GenreId], [Title]) values (7, 'Fiction')
go
insert into [dbo].[Genres] ([GenreId], [Title]) values (8, 'Fantasy')
go
insert into [dbo].[Genres] ([GenreId], [Title]) values (9, 'Computer Science')
go
set IDENTITY_INSERT [dbo].[Genres] off
GO

set IDENTITY_INSERT [dbo].[Authors] on
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (1, N'Эспозито Д.')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (2, N'Руссинович М.')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (3, N'Дж. Рихтер')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (4, N'Таненбаум Э. С.')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (5, N'Лафоре Р.')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (6, N'Паттерсон Д.')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (7, N'Хейлсберг А.')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (8, N'Уайт Т.')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (9, N'Стариков Н.В.')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (10, N'Млечин Л.М.')
go
insert into [dbo].[Authors] ([AuthorId], [Name]) values (11, N'Корнеева Е.А.')
go
set IDENTITY_INSERT [dbo].[Authors] off
go

set IDENTITY_INSERT [dbo].[Series] on
go
insert into [dbo].[Series] ([SeriesId], [GenreId], [Title]) values (1, 9, N'Классика computer science')
go
insert into [dbo].[Series] ([SeriesId], [GenreId], [Title]) values (2, 9, N'Мастер-класс') 
go
insert into [dbo].[Series] ([SeriesId], [GenreId], [Title]) values (3, 9, N'Бестселлеры O''Reilly') 
go
set IDENTITY_INSERT [dbo].[Series] off
go
/*
set IDENTITY_INSERT [dbo].[Users] on
go
--insert into [dbo].[Users] ([UserId], [Name]) values (1, 'admin')
--go									  
insert into [dbo].[Users] ([UserId], [Name]) values (2, 'manager')
go									  
insert into [dbo].[Users] ([UserId], [Name]) values (3, 'andrey')
go									  
insert into [dbo].[Users] ([UserId], [Name]) values (4, 'ruslan')
go									  
insert into [dbo].[Users] ([UserId], [Name]) values (5, 'ivan')
go									  
insert into [dbo].[Users] ([UserId], [Name]) values (6, 'kolya')
go									  
insert into [dbo].[Users] ([UserId], [Name]) values (7, 'Nick')
go									  
insert into [dbo].[Users] ([UserId], [Name]) values (8, 'Ann')
go
insert into [dbo].[Users] ([UserId], [Name]) values (9, 'James')
go
insert into [dbo].[Users] ([UserId], [Name]) values (10, 'Ibragim')
go
insert into [dbo].[Users] ([UserId], [Name]) values (11, 'Kim En Pak')
go
insert into [dbo].[Users] ([UserId], [Name]) values (12, 'Radoslav')
go
insert into [dbo].[Users] ([UserId], [Name]) values (13, 'Ali')
go
insert into [dbo].[Users] ([UserId], [Name]) values (14, 'Muhammed')
go
insert into [dbo].[Users] ([UserId], [Name]) values (15, 'Akbar')
go
insert into [dbo].[Users] ([UserId], [Name]) values (16, 'Alisher')
go
insert into [dbo].[Users] ([UserId], [Name]) values (17, 'Nikita')
go
insert into [dbo].[Users] ([UserId], [Name]) values (18, 'Arnold')
go
insert into [dbo].[Users] ([UserId], [Name]) values (19, 'Stiven')
go
insert into [dbo].[Users] ([UserId], [Name]) values (20, 'Bill')
go
insert into [dbo].[Users] ([UserId], [Name]) values (21, 'Bob')
go
insert into [dbo].[Users] ([UserId], [Name]) values (22, 'Martha')
go
insert into [dbo].[Users] ([UserId], [Name]) values (23, 'Angela')
go
insert into [dbo].[Users] ([UserId], [Name]) values (24, 'Selena')
go
insert into [dbo].[Users] ([UserId], [Name]) values (25, 'Rehsovoy')
go
insert into [dbo].[Users] ([UserId], [Name]) values (26, 'Alex')
go
insert into [dbo].[Users] ([UserId], [Name]) values (27, 'Caleb')
go
set IDENTITY_INSERT [dbo].[Users] off
go
*/
set IDENTITY_INSERT [dbo].[Books] on
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId],[Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (1, 1, 9, 2, N'Программирование с использованием Microsoft ASP.NET 4', 1531, 2012, 880, '978-5-459-00346-8',
N'Эта книга представляет собой наиболее полное руководство по Microsoft ASP.NET, полностью переработанное под версию ASP.NET 4. Вы узнаете обо всех возможностях данной технологии, в частности об использовании тем, мастеров и шаблонов страниц, применении динамических данных для построения и настройки веб-приложений, а также о работе с Microsoft Silverlight и ASP.NET MVC. Особое внимание уделяется рассмотрению внутренних механизмов и конфигурации ASP.NET, jQuery, AJAX и паттернов проектирования.',
'E91CF33E-609D-428A-9F16-49428959913D')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (2, 2, 9, 2, N'Внутреннее устройство Microsoft Windows. 6-е изд.', 1313, 2013, 800, '978-5-496-00434-3',
N'Шестое издание этой легендарной книги посвящено внутреннему устройству и алгоритмам работы основных компонентов операционной системы Microsoft Windows 7, а также Windows Server 2008 R2. Определяются ключевые понятия и термины Windows, дается представление об инструментальных средствах, используемых для исследования внутреннего устройства системы, рассматривается общая архитектура и компоненты ОС. Также в книге дается представление о ключевых основополагающих системных и управляющих механизмах Windows.', 
'3B39B25C-6F4A-45E3-8CE5-F761ABA79C00')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (3, 3, 9, 2, N'CLR via C#. Программирование на платформе Microsoft .NET Framework 4.5 на языке C#. 4-е изд.', 1238, 2013, 896, '978-5-496-00433-6',
N'Четвертое издание книги, написанной признанным экспертом в области программирования Джеффри Рихтером и уже ставшей классикой, полностью обновлено в соответствии со спецификацией платформы .NET Framework 4.5, а также среды Visual Studio 2012 и C# 5.0.', 
'1D14544D-C0DA-4AE3-AF05-01B5761C6E98')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (4, 4, 9, 1, N'Компьютерные сети. 5-е изд.', 1238, 2012, 960, '978-5-4461-0068-2',
N'Перед вами — очередное, пятое издание самой авторитетной книги по современным сетевым технологиям, написанной признанным экспертом в этой области Эндрю Таненбаумом в соавторстве с профессором Вашингтонского университета Дэвидом Уэзероллом. Первая версия этого классического труда появилась на свет в далеком 1980 году, и с тех пор каждое издание книги неизменно становилось бестселлером и использовалось в качестве базового учебника в ведущих технических вузах. В книге последовательно изложены основные концепции, определяющие современное состояние и тенденции развития компьютерных сетей. Авторы подробнейшим образом объясняют устройство и принципы работы аппаратного и программного обеспечения, рассматривают все аспекты и уровни организации сетей — от физического до уровня прикладных программ. Изложение теоретических принципов дополняется яркими, показательными примерами функционирования Интернета и компьютерных сетей различного типа. Пятое издание полностью переработано с учетом изменений, происшедших в сфере сетевых технологий за последние годы и, в частности, освещает такие аспекты, как беспроводные сети стандарта 802.12 и 802.16, сети 3G, технология RFID, инфраструктура доставки контента CDN, пиринговые сети, потоковое вещание, интернет-телефония и многое другое.', 
'AB91E937-9C01-4C74-B9FB-ADD1D2645899')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (5, 5, 9, 1, N'Объектно-ориентированное программирование в С++. ', 844, 2013, 928, '978-5-496-00353-7',
N'Благодаря этой книге тысячи пользователей овладели технологией объектно-ориентированного программирования в С++. В ней есть все: основные принципы языка, готовые полномасштабные приложения, небольшие примеры, поясняющие теорию, и множество полезных иллюстраций. Книга пользуется стабильным успехом в учебных заведениях благодаря тому, что содержит более 100 упражнений, позволяющих проверить знания по всем темам. Читатель может вообще не иметь подготовки в области языка С++. Необходимо лишь знание начальных основ программирования.', 
'6FB151FE-9BA2-470E-B846-558A0AAA5D46')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (6, 6, 9, 1, N'Архитектура компьютера и проектирование компьютерных систем.', 856, 2011, 784, '978-5-459-00291-1',
N'Книга, выходящая уже в 4-м издании, посвящена структурной организации компьютера и отражает революционные изменения, происходящие в области аппаратного обеспечения, в частности стремительный переход от однопроцессорных систем к многоядерным микропроцессорам. В издании подробно описывается архитектура компьютера и устройство всех его компонентов: процессоров, блоков памяти, средств ввода-вывода и хранения данных. Отличительной особенностью книги является демонстрация взаимодействий между аппаратными средствами и системным программным обеспечением. Особое внимание уделяется многоядерным вычислительным системам и параллельному программированию. Многочисленные упражнения и задачи, приводимые после каждой темы, помогают закрепить материал. Книга рассчитана на широкий круг читателей: от студентов, изучающих компьютерные технологии, до опытных разработчиков, которые хотят освоить современные концепции многопроцессорного программирования. ', 
'D3A38E79-28A2-4D93-AF56-2BD85A416B6F')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (7, 7, 9, 1, N'Язык программирования C#', 1188, 2011, 784, '978-5-459-00283-6',
N'Перед вами — четвертое издание главной книги по языку C#, написанной легендой программирования — Андерсом Хейлсбергом, архитектором C#, Delphi и Turbo Pascal, совместно с другими специалистами, входившими в группу разработчиков C# компании Microsoft. Издание является наиболее полным описанием языка и самым авторитетным источником информации по этой теме, построенным в формате сборника спецификаций, включающих в себя описание синтаксиса, сопутствующие материалы и примеры, а также образцы кода. Эта книга — своего рода «библия» разработчика, которая с легкостью может заменить как MSDN, так и остальные книги по C#. Четвертое издание содержит описание новых особенностей C# 4.0, включая динамическое связывание, именованные и необязательные параметры, а также ковариантные и контравариантные обобщенные типы. Цель этих новшеств — расширение возможностей C# для взаимодействия с объектами, не относящимися к платформе .NET. Отличительная особенность нового издания также состоит в том, что каждая глава книги содержит обширные комментарии, написанные известными «гуру» программирования, такими как Джон Скит, Джозеф Альбахари, Билл Вагнер, Кристиан Нейгел, Эрик Липперт и др.', 
'DB2D1F8E-555E-45B0-8D86-787E5CB3A1EE')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (8, 8, 9, 3, N'Hadoop. Подробное руководство', 938, 2013, 672, '978-5-496-00662-0',
N'Apache Hadoop — фреймворк с открытым исходным кодом, в котором реализована вычислительная парадигма, известная как MapReduce, позволившая Google построить свою империю. Эта книга покажет вам, как использовать всю мощь Hadoop, чтобы создавать надежные, масштабируемые, распределенные системы и обрабатывать гигантские наборы данных.', 
'cb912ae0-49f8-4b44-812d-fa3844bbc5ff')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (9, 9, 3, null, N'1917. Разгадка "русской" революции', 244, 2013, 416, '978-5-496-00464-0',
N'Гибель Российской империи в 1917 году не была случайностью, как не случайно рассыпался и Советский Союз. В обоих случаях мощная внешняя сила инициировала распад России, используя подлецов и дураков, которые за деньги или красивые обещания в итоге разрушили свою собственную страну.', 
'749449D4-1B23-4BB6-8958-DAEEED0B0009')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (10, 10, 3, null, N'Брежнев. Разочарование России', 300, 2011, 432, '978-5-459-00881-4',
N'Как бы ни ругали бузотера и реформатора Хрущева, статистика неопровержимо доказывает: десять лет, когда страной управлял Хрущев, были лучшими в советской истории. После его смещения у многих оставались еще надежды на лучшую жизнь, связанные с новым генсеком Леонидом Ильичем Брежневым. Однако политика Брежнева, постепенно устранившего от управления страной всех своих конкурентов, состояла в том, чтобы ничего не менять! Огражденный от реальной жизни партийным аппаратом, цензурой, системой госбезопасности Брежнев за восемнадцать лет своего правления окончательно загнал страну в тупик, безболезненно выбраться из которого было уже невозможно. Новая книга Леонида Млечина о том, как Брежнев шел к власти, как выстраивал систему управления, как расцветали при нем пышным цветом органы государственной безопасности, и о том, как вместе с первым человеком в государстве постепенно дряхлел и приближался к гибели Советский Союз.', 
'623B75CB-63BC-424F-8A0F-70BAB7117013')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (11, 11, 3, null, N'Царство Путина. Неосталинизм по просьбам народа', 194, 2010, 208, '978-5-4237-0033-1',
N'Западные демократии переживают кризис, диктатуры пожирают себя изнутри, и только мы — народ, гордящийся своим правителем и безропотно верящий в скорое возрождение Великой России. Что побуждает человека полагаться на авторитет Вождя, подавлять слабых и нерешительных, чувствовать экстаз, сливаясь в единое целое с могучей толпой, обожествлять сильную власть и самому стремиться к ней? Чем уникален современный славянский авторитаризм и какую роль играет в нем анархичность «русской души»? Существует ли предел возможностям СМИ в промывании наших мозгов? Где грань между разумным правителем и царем-самодуром? На эти и другие вопросы отвечает Елена Корнеева — психолог, кандидат философских наук, исследователь в области авторитарной личности и кросскультурной психологии.', 
'1B30A569-8AD0-4A2E-8048-1FDF9278825B')
go
insert into [dbo].[Books] ([BookId], [AuthorId], [GenreId], [SeriesId], [Title], [Price], [Year], [Pages], [ISBN], [Desc], [ImageFile])
values (12, 9, 3, null, N'Сталин. Вспоминаем вместе', 185, 2013, 416, '978-5-496-00223-3',
N'В современной истории России нет более известного человека, чем Иосиф Сталин. Вокруг него не умолкают споры, а оценки его деятельности диаметрально противоположны. Книга Николая Старикова основанная на воспоминаниях современников и соратников Сталина, документах и исторических фактах, поможет вам найти ответы на наиболее острые вопросы:Чем были вызваны репрессии в предвоенный период? Почему современники считали Сталина очень остроумным человеком? За что Никита Хрущев так ненавидел Сталина? Почему в первые месяцы войны «союзники» присылали в СССР слова сочувствия, а не танки и самолеты? Эта книга поможет вам разобраться в сложной исторической эпохе и в не менее сложной личности И. В. Сталина.', 
'66D0791F-055D-4D38-B832-DB1A0E673798')
go
set IDENTITY_INSERT [dbo].[Books] off
go

/*

	Social Data

*/

set IDENTITY_INSERT [dbo].[TopicCategories] on
go
insert into [dbo].[TopicCategories] ([TopicCategoryId], [Title], [Desc]) values (1, N'General questions', N'The place you may put your question if you did not find any other category')
go
insert into [dbo].[TopicCategories] ([TopicCategoryId], [Title], [Desc]) values (2, N'Payment issues', N'All payment, shipping, delivery issues in one place')
go
insert into [dbo].[TopicCategories] ([TopicCategoryId], [Title], [Desc]) values (3, N'What are you read?', N'All about books you read and love')
go
set IDENTITY_INSERT [dbo].[TopicCategories] off
go

set IDENTITY_INSERT [dbo].[Topics] on
go
insert into [dbo].[Topics] ([TopicId], [TopicCategoryId], [Theme], [ViewsCount]) values (1, 1, 'When did you finish this site', 0)
go
insert into [dbo].[Topics] ([TopicId], [TopicCategoryId], [Theme], [ViewsCount]) values (2, 1, 'This site is too slow for my computer', 0)
go
insert into [dbo].[Topics] ([TopicId], [TopicCategoryId], [Theme], [ViewsCount]) values (3, 1, 'Stop war!', 0)
go
insert into [dbo].[Topics] ([TopicId], [TopicCategoryId], [Theme], [ViewsCount]) values (4, 1, 'Who is mister Putin?', 0)
go
insert into [dbo].[Topics] ([TopicId], [TopicCategoryId], [Theme], [ViewsCount]) values (5, 1, 'Why you did not use WordPress or Jumla?', 0)
go
set IDENTITY_INSERT [dbo].[Topics] off
go