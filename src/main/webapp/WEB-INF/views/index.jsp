<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>DMV — Уроки гитары в Минске</title>
    <meta name="description"
          content="Уроки гитары для начинающих в Минске по самым доступным ценам!Уроки у Вас на дому!">
    <meta name="keywords" content="уроки гитары минск,уроки гитары в минске,уроки гитары минск для начинающих,уроки гитары для начинающих в минске,
      уроки игры на гитаре минск,уроки игры на гитаре в минске,уроки игры для начинающих минск,уроки игры на гитаре для начинающих в минске,
      курсы гитары минск,курсы гитары в минске,школа гитары минск,школа гитары в минске,уроки электрогитары минск,курсы электрогитары минск">
    <link rel="shortcut icon" href="<core:url value="/img/kvintapICO.ico"/>">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/bootstrap.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/cap.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/menu.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/replaceable_body.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/bid.css" />">
    <script rel="script" type="text/javascript" src="<core:url value="/javascript/http_ajax.googleapis.com_ajax_libs_jquery_3.2.1_jquery.js"/>"></script>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <%--<script rel="script" type="text/javascript" src="<core:url value="/javascript/script.js"/>"></script>--%>
    <script rel="script" type="text/javascript" src="<core:url value="/javascript/jquery.js"/>"></script>
</head>
<body>
<div style="position: relative">
    <header>
        <div id="cap">
            <div id="cap_left">
                <h2>
                    <span>Репетиторство</span><br>
                    Михаила Владимировича
                </h2>
                <h3>
                    индивидуальное обучение
                    <br>
                    игры на ГИТАРЕ
                </h3>
            </div>
            <div id="cap_right">
                <p id="cap_right_phone">+375 00 000 00 00</p>
                <p>Viber: +375 00 000 00 00<br>
                    Skype: ..........</p>
            </div>
        </div>
        <div id="menu">
            <ul>
                <li>
                    <a onclick="change('/ShowServlet')" title="Здесь ссылка на главную">Главная</a>
                </li>
                <li>
                    <a onclick="change('/ShowServlet?action=about_myself')" title="Здесь информация о cебе">О себе</a>
                </li>
                <li>
                    <a title="Здесь галерея Аудио Видео Фото">Галерея</a>
                    <ul>
                        <li><a onclick="change('/ShowServlet?action=audio')">Аудио</a></li>
                        <li><a onclick="change('/ShowServlet?action=video')">Видео</a></li>
                        <li><a onclick="change('/ShowServlet?action=photo')">Фото</a></li>
                    </ul>
                </li>
                <li>
                    <a onclick="change('/ShowServlet?action=cost')" title="Стоимость">Стоимость</a>
                </li>
                <li>
                    <a onclick="change('/ShowServlet?action=reviews')" title="Отзывы">Отзывы</a>
                </li>
                <li>
                    <a onclick="change('/ShowServlet?action=contacts')" title="Контакты">Контакты</a>
                </li>
            </ul>
        </div>

    </header>
    <%----------------------------------------------EXCHANGE------------------------------------------------%>
    <div class="exchange">
        <core:choose>
            <%--О СЕБЕ--%>
            <core:when test="${param.get('action') == 'about_myself'}">
                <div class="common_content text_justify">
                    <div class="avatar">
                        <img src="<core:url value="/photo/Mike.jpg"/>">
                    </div>
                    <p> Изъеденные каждодневными размышлениями, измученные (и в снах рассуждающие) ночами, измельченные
                        до
                        тысячи разных «я»,
                        застрявшие между желаемым «да» и предстоящим (как это обычно бывает) «нет»,
                        наблюдающие за таинственным переходом от дня к ночи (когда реальность и нереальность
                        соприкасаются нежно
                        и осторожно,
                        как влюбленные – в первый раз), мы слушаем тревожные голоса ласточек и ощущаем предчувствие и
                        надежду,
                        облеченную в обреченность.
                        <br><br>
                        Так, наверное, зарождался мир, как в нас зарождается музыка. Хаос звуков – хруст ломающихся
                        снежинок,
                        плач одинокого парусника,
                        кряхтение неповоротливых облаков, ласковая колыбельная волн, слезный шепот дождя, звон тишины,
                        колокольное гудение гор,
                        таинственные голоса звезд, плывущих в космическом вакууме, – постепенно превращается в мелодии.
                        Они ютятся в нас дрожащими бесприютными птенцами и вырываются на волю красивыми белыми чайками.
                        <br><br>
                        И сколько бы ни прошло лет, музыка никогда не утихает. Она звучит и сейчас...
                        <br><br>
                        Если музыка звучит и в вашем сердце, но вы не знаете, как ее выпустить на свободу,
                        Центр музыки и творчества Space Sound поможет вам овладеть игрой на музыкальных инструментах;
                        вокальным
                        искусством;
                        навыками студийной звукорежиссуры; основами импровизации, композиции, стихосложения; улучшить
                        имеющиеся
                        музыкальные навыки,
                        развить способности.
                        <br><br>
                        Если вы не мыслите свою жизнь без музыки и давно занимаетесь ею, если вы всегда мечтали быть не
                        только
                        слушателем,
                        но стать исполнителем – человеком, дающим жизнь красоте, а к мечте своей боялись даже
                        прикоснуться,
                        Space Sound станет для вас другом,
                        ментором, проводником в космический мир звуков.
                        <br><br>
                        Экзистенциальная свобода, которую дает музыка, возможно, мила не каждому.
                        Но если вам просто необходимо определить себя в этом мире с помощью творчества, добро пожаловать
                        к нам!
                        <br><br>
                        Центр музыки и творчества Space Sound предлагает услуги по написанию песен, мюзиклов; различные
                        виды
                        услуг студии звукозаписи,
                        а также обучение:

                        вокальному мастерству;
                        игре на клавишных инструментах;
                        игре на гитаре;
                        игре на барабанах;
                        студийной звукорежиссуре.
                    </p>
                </div>
            </core:when>
            <%--AUDIO--%>
            <core:when test="${param.get('action') == 'audio'}">
                <div class="individual_content">
                    <ul class="styleAudio">
                        <core:forEach var="dto" items="${dtoList}">
                            <li><p>${dto.id}|${dto.name}</p>
                                <audio controls>
                                    <source src="${dto.audio}" type="audio/mp3">
                                    Тег audio не поддерживается вашим браузером.
                                    <a href="${dto.audio}">SAVE</a>.
                                </audio>
                            </li>
                        </core:forEach>
                    </ul>
                </div>
            </core:when>
            <%--VIDEO--%>
            <core:when test="${param.get('action') == 'video'}">
                <div class="individual_content">
                    <ul class="styleVideo">
                        <core:forEach var="dto" items="${dtoList}">
                            <li><p>${dto.id}|${dto.name}</p>
                                <iframe src="${dto.video}" allowfullscreen></iframe>
                            </li>
                        </core:forEach>
                    </ul>
                </div>
            </core:when>
            <%--PHOTO--%>
            <core:when test="${param.get('action') == 'photo'}">
                <div class="common_content">
                    <div class="stylePhoto">
                        <core:forEach var="dto" items="${dtoList}">
                            <div>
                                <a onclick="change('/ShowServlet?action=onePhoto&id=${dto.id}')" title="${dto.name}">
                                    <p>${dto.id}|${dto.name}</p>
                                    <img src="${dto.photo}">
                                </a>
                            </div>
                        </core:forEach>
                    </div>
                </div>
            </core:when>
            <%--ONE PHOTO--%>
            <core:when test="${param.get('action') == 'onePhoto'}">
                <jsp:useBean id="photo" scope="request" type="entity.Photo"/>
                <div class="common_content">
                    <ul class="double styleOnePhoto">
                        <li>
                            <a onclick="change('/ShowServlet?action=photo')" title="fgh">
                                <p>${photo.id}|<fmt:formatDate pattern="yyyy-MM-dd" value="${photo.date}"/>|${photo.name}</p>
                                <img src="${photo.photo}">
                            </a>
                        </li>
                    </ul>
                </div>
            </core:when>
            <%--СТОИМОСТЬ--%>
            <core:when test="${param.get('action') == 'cost'}">
                <div class="common_content">
                    <table class="cost text_center">

                        <thead>
                        <tr>
                            <th rowspan="2"></th>
                            <th>
                                Абонемент на 1 месяц
                                <p>(8 занятий)</p>
                            </th>
                            <th>
                                Базовый курс — 3 месяца
                                <p>(24 занятия)</p>
                            </th>
                            <th>
                                Базовый курс — 4 месяца
                                <p>(32 занятия)</p>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Индивидуально</td>
                            <td>134 руб.</td>
                            <td>402 руб.</td>
                            <td>536 руб.</td>
                        </tr>
                        <tr>
                            <td>Парные</td>
                            <td>76 руб.</td>
                            <td>228 руб.</td>
                            <td>304 руб.</td>
                        </tr>
                        <tr>
                            <td>Малая группа (3-4 чел.)</td>
                            <td>67 руб.</td>
                            <td>201 руб.</td>
                            <td>268 руб.</td>
                        </tr>
                        <tr>
                            <td>Группа (5-7 чел.)</td>
                            <td>54 руб.</td>
                            <td>162 руб.</td>
                            <td>216 руб.</td>
                        </tr>
                        <tr>
                            <td>Занятия у Вас дома!</td>
                            <td> 160 руб.</td>
                            <td> 480 руб.</td>
                            <td>640 руб.</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </core:when>
            <%--ОТЗЫВЫ--%>
            <core:when test="${param.get('action') == 'reviews'}">
                <div class="common_content text_justify">
                    <p>
                        Анастасия:<br>
                        15.03.2017 в 13:40<br>
                        Занимаюсь на укулеле с преподавателем Аней Белонович уже четыре месяца. Человеку с нулевым
                        музыкальным, как я,
                        занятия в этой студии понравятся обязательно! Для моего преподавателя музыка — это профессия, но
                        на занятиях становится понятно,
                        что она занимается обучением других и для собственного удовольствия тоже. Аня — очень чуткий,
                        грамотный и опытный преподаватель.
                        Она отлично умеет находить общий язык с учеником, доходчиво объяснять, что и как нужно делать,
                        вовремя показывать и корректировать
                        ошибки. И результат мне очень нравится smile
                    </p>
                </div>
                <div class="common_content text_justify">
                     <p>
                        Рагнеда:<br>
                        14.03.2017 в 22:41<br>
                        Очень хорошая студия! К каждому ученику индивидуальный подход! Интересный интерьер, творческая
                        атмосфера ,хорошее настроение
                        вам обеспечено ))) Есть чай и печеньки good Отличные преподаватели! Занятия интересные и
                        занимательные) Часто проходят
                        разнообразные концерты yes Скучно не будет)) Довольно удобное расположение, находится в центре.
                        Всем советую!
                    </p>
                </div>
                <div class="common_content text_justify">
                    <p>
                        Александр:<br>
                        15.03.2017 в 10:46<br>
                        В течение двух месяцев занимаюсь вокалом у педагога Анастасии Филипповой в арт-квартале. Мне
                        было непросто попадать в ноты,
                        находить нужную, подавать голос, но благодаря безграничному терпению моего наставника у меня
                        реально «поперло»!!
                        Теперь друзья не затыкают, а наоборот, просят спеть еще нибудь bravo
                        Про саму студию могу сказать то, что здесь работает целая команда профессионалов, был на
                        различных мероприятиях.
                        Например, мастер-класс по бас-гитаре превратился в настоящий концерт, на который хочется сходить
                        еще раз, а отчетные
                        концерты учеников-это настоящие шоу, которые интересно смотреть и слушать! Спасибо вам за
                        атмосферу, знания, навыки и
                        бесплатные печеньки laugh
                    </p>
                </div>
            </core:when>
            <%--КОНТАКТЫ--%>
            <core:when test="${param.get('action') == 'contacts'}">
                <div class="common_content text_center">
                    <p>GSM: +375 00 000 00 00</p>
                    <p>Viber: +375 00 000 00 00</p>
                    <p>Skype: ..........</p>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2350.2499034291304!2d27.4940230242791!3d53.909535008103106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dbc545f13526d9%3A0x6858a3626c124c34!2z0J_Rg9GI0LrQuNC90YHQutCw0Y8!5e0!3m2!1sru!2sby!4v1490357860100"
                            width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    <p>Помогите нам стать лучше! Если у вас есть предложения по улучшению
                        работы студии - высылайте на
                        ..........@gmail.com.</p>
                </div>
            </core:when>
            <%--ERROR--%>
            <core:when test="${action == 'error'}">
                <div class="common_content">
                    <core:if test="${error == 'name_error'}">
                        <p class="errorSend">
                            Введите пожалуйста Ваше имя!
                        </p>
                    </core:if>
                    <core:if test="${error == 'phone_error'}">
                        <p class="errorSend">
                            Введите пожалуйста Ваш номер телефона!
                        </p>
                    </core:if>
                    <core:if test="${error == 'email_error'}">
                        <p class="errorSend">
                            Введите пожалуйста Ваш E-mail!
                        </p>
                    </core:if>
                    <core:if test="${error == 'connect_BD'}">
                        <p class="errorSend">
                            Ошибка подключения, не могу достучаться до Базы Данных!
                        </p>
                    </core:if>
                    <core:if test="${error == 'send_email'}">
                        <p class="errorSend">
                            Ошибка отправки данных, какой-то сбой в программе произошёл при отправки!
                            Пожалуйста воспользуйтесь вкладкой КОНТАКТЫ и выберети сбособ связи удобный для Вас!
                        </p>
                    </core:if>
                    <core:if test="${error == 'server'}">
                        <p class="errorSend">
                            Ошибка приложения, какой-то сбой в программе!
                        </p>
                    </core:if>
                </div>
            </core:when>
            <%--ACTION--%>
            <core:when test="${action == 'SEND'}">
                <div class="common_content">
                    <p class="errorSend">
                        Заявка отправлена ${param.get('name')} c ${param.get('email')}!<br>
                        Вам перезвонят в течение дня на номер<br>
                        "${param.get('phone')}"!
                    </p>
                </div>
            </core:when>
            <%--ГЛАВНАЯ--%>
            <core:otherwise>
                <div class="common_content text_justify">
                    <div class="avatar">
                        <img src="<core:url value="/img/avatar.jpg"/>">
                    </div>
                    <p> Многие культовые музыканты начинали свой путь с того, что подбирали или сочиняли песни под
                        гитару.
                        Если вас завораживает этот инструмент, перестаньте мечтать, овладейте им!
                        <br><br>
                        Без минимальной теоретической базы освоить гитару достаточно сложно.
                        Наши преподаватели помогут вам с этим. А также вы узнаете все о правильной постановке рук и
                        грамотном
                        извлечении звука,
                        о цифровках и табулатурах, научитесь специальным приемам игры. Вы сможете подбирать музыку на
                        слух,
                        играть сольные произведения,
                        получите навыки аккомпанемента.
                        <br><br>
                        Если же у вас есть желание сочинять музыку, мы также поможем вам в этом.
                        Многие необыкновенно лиричные музыкальные шедевры звучали просто под гитару!
                    </p>
                </div>
            </core:otherwise>
        </core:choose>
    </div>
    <%----------------------------------------------------BOTTOM--------------------------------------------------%>
    <div class="bottom">
        <div id="bid">
            <p>
                ОТПРАВИТЬ ЗАЯВКУ
            </p>
            <div>
                <form name="formSend" novalidate="novalidate" autocomplete="off">
                    <input type="text" name="name" value="<core:if test="${param.get('name') != null}">${param.get('name')}</core:if>" required="required" placeholder="Ваше имя" autocomplete="name"/><br>
                    <input type="text" name="phone" value="<core:if test="${param.get('phone') != null}">${param.get('phone')}</core:if>" required="required" placeholder="+375 __ ___ __ __" autocomplete="phone"/><br>
                    <input type="text" name="email" value="<core:if test="${param.get('email') != null}">${param.get('email')}</core:if>" required="required" placeholder="E-mail" autocomplete="email"/><br>
                    <input type="button" name="action" value="SEND" onclick="sendE()"/>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>