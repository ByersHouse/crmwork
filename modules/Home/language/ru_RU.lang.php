<?php
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2017 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */

if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

$mod_strings = array(
    'LBL_MODULE_NAME' => 'Главная',
    'LBL_MODULES_TO_SEARCH' => 'Поиск в модулях',
    'LBL_NEW_FORM_TITLE' => 'Новый контакт',
    'LBL_FIRST_NAME' => 'Имя:',
    'LBL_LAST_NAME' => 'Фамилия:',
    'LBL_LIST_LAST_NAME' => 'Фамилия',
    'LBL_PHONE' => 'Тел.:',
    'LBL_EMAIL_ADDRESS' => 'E-mail:',
    'LBL_MY_PIPELINE_FORM_TITLE' => 'Диаграмма стадий моих продаж',
    'LBL_PIPELINE_FORM_TITLE' => 'Диаграмма стадий общих продаж',
    'LBL_RGraph_PIPELINE_FORM_TITLE' => 'Диаграмма стадий общих продаж',
    'LBL_CAMPAIGN_ROI_FORM_TITLE' => 'Рентабельность инвестиций',
    'LNK_NEW_CONTACT' => 'Создать контакт',
    'LNK_NEW_ACCOUNT' => 'Создать контрагента',
    'LNK_NEW_OPPORTUNITY' => 'Создать сделку',
    'LNK_NEW_LEAD' => 'Создать предв. контакт',
    'LNK_NEW_CASE' => 'Создать обращение',
    'LNK_NEW_NOTE' => 'Создать заметку или вложение',
    'LNK_NEW_CALL' => 'Назначить звонок',
    'LNK_NEW_EMAIL' => 'Отправить E-mail в архив',
    'LNK_COMPOSE_EMAIL' => 'Создать E-mail',
    'LNK_NEW_MEETING' => 'Назначить встречу',
    'LNK_NEW_TASK' => 'Создать задачу',
    'LNK_NEW_BUG' => 'Новая ошибка',
    'LBL_ADD_BUSINESSCARD' => 'Ввести визитку',
    'LBL_OPEN_TASKS' => 'Мои открытые задачи',
    'LBL_SEARCH_RESULTS_IN' => 'в',
    'LNK_NEW_SEND_EMAIL' => 'Формирование E-mail',
    'LBL_NO_ACCESS' => 'Доступ к разделу закрыт. Свяжитесь с администратором системы для получения соответствующих прав.',
    'LBL_NO_RESULTS_IN_MODULE' => '-- Нет результатов --',
    'LBL_NO_RESULTS' => '<h2>Ничего не найдено. Пожалуйста, повторите поиск.</h2><br>',
    'LBL_NO_RESULTS_TIPS' => '<h3>Совет:</h3><ul><li>Убедитесь, что вы отметили необходимые модули.</li><li>Укажите более подробные условия поиска.</li><li>Если вы все ещё ничего не нашли - попробуйте воспользоваться закладкой "Расширенный поиск" соответствующего модуля.</li></ul>',

    'LBL_ADD_DASHLETS' => 'Добавить дашлеты',
    'LBL_ADD_PAGE' => 'Добавить страницу',
    'LBL_DEL_PAGE' => 'Удалить страницу',
    'LBL_WEBSITE_TITLE' => 'Веб-сайт',
    'LBL_RSS_TITLE' => 'Ленты новостей',
    'LBL_DELETE_PAGE' => 'Удалить страницу',
    'LBL_CHANGE_LAYOUT' => 'Изменить макет',
    'LBL_RENAME_PAGE' => 'Переименовать страницу',
    'LBL_CLOSE_DASHLETS' => 'Закрыть',
    'LBL_OPTIONS' => 'Параметры',
    // dashlet search fields
    'LBL_TODAY' => 'Сегодня',
    'LBL_YESTERDAY' => 'Вчера',
    'LBL_TOMORROW' => ' Завтра ',
    'LBL_LAST_WEEK' => 'Прошлая неделя',
    'LBL_NEXT_WEEK' => 'Следующая неделя',
    'LBL_LAST_7_DAYS' => 'Прошедшие 7 дней',
    'LBL_NEXT_7_DAYS' => 'Следующие 7 дней',
    'LBL_LAST_MONTH' => 'Прошлый месяц',
    'LBL_NEXT_MONTH' => 'Следующий месяц',
    'LBL_LAST_QUARTER' => 'Прошлый квартал',
    'LBL_THIS_QUARTER' => 'Этот квартал',
    'LBL_LAST_YEAR' => 'Прошлый год',
    'LBL_NEXT_YEAR' => 'Следующий год',
    'LBL_LAST_30_DAYS' => 'Прошедшие 30 дней',
    'LBL_NEXT_30_DAYS' => 'Следующие 30 дней',
    'LBL_THIS_MONTH' => 'Этот месяц',
    'LBL_THIS_YEAR' => 'Этот год',

    'LBL_MODULES' => 'Модули',
    'LBL_CHARTS' => 'Диаграммы',
    'LBL_TOOLS' => 'Разное',
    'LBL_WEB' => 'Веб',
    'LBL_SEARCH_RESULTS' => 'Результат поиска',

    // Dashlet Categories
    'dashlet_categories_dom' => array(
        'Module Views' => 'Модули',
        'Portal' => 'Портал',
        'Charts' => 'Графики',
        'Tools' => 'Сервис',
        'Miscellaneous' => 'Разное'
    ),
    'LBL_ADDING_DASHLET' => 'Добавление дашлета ...',
    'LBL_ADDED_DASHLET' => 'Дашлет добавлен',
    'LBL_REMOVE_DASHLET_CONFIRM' => 'Вы действительно хотите удалить этот дашлет?',
    'LBL_REMOVING_DASHLET' => 'Удаление дашлета ...',
    'LBL_REMOVED_DASHLET' => 'Дашлет удалён',
    'LBL_DASHLET_CONFIGURE_GENERAL' => 'Основные настройки',
    'LBL_DASHLET_CONFIGURE_FILTERS' => 'Фильтры',
    'LBL_DASHLET_CONFIGURE_MY_ITEMS_ONLY' => 'Мои записи:',
    'LBL_DASHLET_CONFIGURE_TITLE' => 'Заголовок:',
    'LBL_DASHLET_CONFIGURE_DISPLAY_ROWS' => 'Отображать строк:',

    'LBL_DASHLET_DELETE' => 'Удалить дашлет',
    'LBL_DASHLET_REFRESH' => 'Обновить дашлет',
    'LBL_DASHLET_EDIT' => 'Настроить дашлет',

    // Default out-of-box names for tabs
    'LBL_HOME_PAGE_1_NAME' => 'Главная',
    'LBL_CLOSE_SITEMAP' => 'Закрыть',

    'LBL_SEARCH' => 'Найти',
    'LBL_CLEAR' => 'Очистить',

    'LBL_BASIC_CHARTS' => 'Основные диаграммы',

    'LBL_DASHLET_SEARCH' => 'Найти дашлет',

//ABOUT page
    'LBL_VERSION' => 'Версия',
    'LBL_BUILD' => 'Сборка',

    'LBL_SOURCE_SUGAR' => 'SugarCRM Inc - провайдеры фреймворка CE',
    'LBL_SOURCE_XTEMPLATE' => 'XTemplate - движок шаблонов для PHP. автор: Barnabás Debreceni',
    'LBL_SOURCE_NUSOAP' => 'NuSOAP - Набор PHP классов, которые дают возможность разработчикам создавать и пользоваться веб-сервисами, автор: корпорация NuSphere и Dietrich Ayala',
    'LBL_SOURCE_JSCALENDAR' => 'JS Calenda - Календарь для введения дат, автор:Mihai Bazon',
    'LBL_SOURCE_PHPPDF' => 'PHP PDF - библиотека для создания PDF-документов, автор: Wayne Munro',
    'LBL_SOURCE_HTTP_WEBDAV_SERVER' => 'HTTP_WebDAV_Server - Применение сервера WebDAV в PHP.',
    'LBL_SOURCE_PCLZIP' => 'PclZip - библиотека, предлагающая сжатие и извлечение функций для архивов формата Zip, автор: Vincent Blavet',
    'LBL_SOURCE_SMARTY' => 'Smarty - движок шаблонов для PHP.',
    'LBL_SOURCE_YAHOO_UI_LIB' => 'Yahoo! User Interface Library - Свойства UI Library облегчают применение широких возможностей клиентских свойств.',
    'LBL_SOURCE_PHPMAILER' => 'PHPMailer - Полнофункциональный класс пересылки e-mail для PHP',
    'LBL_SOURCE_JSHRINK' => 'JShrink - обфускатор javascript, написанный на PHP',
    'LBL_SOURCE_CRYPT_BLOWFISH' => 'Crypt_Blowfish - Дает возможность быстрого двусторонннего шифрования blowfish без запросов расширения MCrypt PHP.',
    'LBL_SOURCE_XML_HTMLSAX3' => 'XML_HTMLSax3 - синтаксический анализатор SAX  для HTML и других плохо сформированных XML-документов',
    'LBL_SOURCE_YAHOO_UI_LIB_EXT' => 'Yahoo! UI Extensions Library - Расширения к библиотеке пользовательского интерфейса, автор: Jack Slocum',
    'LBL_SOURCE_SWFOBJECT' => 'SWFObject - скрипт для обнаружения и остановки Javascript Flash Player.',
    'LBL_SOURCE_TINYMCE' => 'TinyMCE - WYSIWYG editor control для веб-браузеров, который дает пользователю возможность редактировать состав HTML',
    'LBL_SOURCE_EXT' => 'Ext - клиентский JavaScript  фреймворк для создания веб-приложений.',
    'LBL_SOURCE_RECAPTCHA' => 'reCAPTCHA - бесплатный сервис CAPTCHA , который помогает цифровать книги, газеты и старые выпуски радиопередач.',
    'LBL_SOURCE_TCPDF' => 'TCPDF - PHP-класс для генерирования PDF-документов.',
    'LBL_SOURCE_CSSMIN' => 'CssMin - css parser и minifier',
    'LBL_SOURCE_PHPSAML' => 'PHP-SAML - Простой SAML-инструментарий для PHP.',
    'LBL_SOURCE_ISCROLL' => 'iScroll - Возможность overflow:scroll для мобильного инструментария. Родной скроллинг внутри элементов, фиксированных по длине/ширине.',
    'LBL_SOURCE_FLASHCANVAS' => 'FlashCanvas - это библиотека JavaScript, добавляющая поддержку HTML5 Canvas в Internet Explorer. Рендерит формы и изображения при помощи Flash drawing API. Поддерживает большинство Canvas API и во многих случаях является более производительной, чем похожие библиотеки, использующие VML или Silverlight.',
    'LBL_SOURCE_JIT' => 'JavaScript InfoVis Toolkit - это инструментарий для создания интерактивных визуализаций данных для размещения в сети Интернет.',
    'LBL_SOURCE_ZEND' => 'Zend Framework - Объект-ориентированный фреймворк веб-приложений для PHP5 с открытым исходным кодом.',
    'LBL_SOURCE_PARSECSV' => 'parseCSV - парсер CSV для PHP',
    'LBL_SOURCE_PHPJS' => 'php.js - использование функций PHP в JavaScript',
    'LBL_SOURCE_PHPSQL' => 'Парсер PHP SQL',
    'LBL_SOURCE_HTMLPURIFIER' => 'HTML Purifier - библиотека фильтрации HTML на соответствие стандартам.',
    'LBL_SOURCE_XHPROF' => 'XHProf - Иерархический профайлер функционального уровня для PHP.',
    'LBL_SOURCE_ELASTICA' => 'Elastica - PHP клиент для распределённого поискового движка elasticsearch ',
    'LBL_SOURCE_FACEBOOKSDK' => 'Facebook PHP SDK',
    'LBL_SOURCE_JQUERY' => 'jQuery - jQuery — это быстрая, маленькая и функционально-насыщенная библиотека JavaScript.',
    'LBL_SOURCE_JQUERY_UI' => 'jQuery UI - jQuery UI — это кураторский набор элементов интерфейса пользователя, эффектов, виджетов и тем, построенный поверх библиотеки jQuery.',
    'LBL_SOURCE_OVERLIB' => 'OverlibMWS - Библиотека overlibmws пользуется javascript для создания всплывающих окон DHTML, нужных для вывода информации и навигации по веб-сайтам.',

  'LBL_DASHLET_TITLE' => 'Мои сайты',
  'LBL_DASHLET_OPT_TITLE' => 'Заголовок:',
  'LBL_DASHLET_INCORRECT_URL' => 'Неверный адрес веб-сайта',
  'LBL_DASHLET_OPT_URL' => 'Адрес веб-сайта:',
  'LBL_DASHLET_OPT_HEIGHT' => 'Высота дашлета (в пикселях):',
  'LBL_DASHLET_SUGAR_NEWS' => 'SuiteCRM-новости',
  'LBL_DASHLET_DISCOVER_SUGAR_PRO' => 'Узнать о SuiteCRM',
	'LBL_POWERED_BY_SUGAR' => 'Работает на SugarCRM' /*for 508 compliance fix*/,
	'LBL_MORE_DETAIL' => 'Подробнее' /*for 508 compliance fix*/,
	'LBL_BASIC_SEARCH' => 'Фильтры' /*for 508 compliance fix*/,
	'LBL_ADVANCED_SEARCH' => 'Расширенный фильтр' /*for 508 compliance fix*/,
    'LBL_TOUR_HOME' => 'Домашняя иконка',
    'LBL_TOUR_HOME_DESCRIPTION' => 'Вернуться назад на вашу домашнюю страницу панели мониторинга, в один клик.',
    'LBL_TOUR_MODULES' => 'Модули',
    'LBL_TOUR_MODULES_DESCRIPTION' => 'Все важные для вас модули здесь.',
    'LBL_TOUR_MORE' => 'Больше Модулей',
    'LBL_TOUR_MORE_DESCRIPTION' => 'Остальные ваши модули здесь.',
    'LBL_TOUR_SEARCH' => 'Полнотекстовый поиск',
    'LBL_TOUR_SEARCH_DESCRIPTION' => 'Просто поиск стал намного лучше.',
    'LBL_TOUR_NOTIFICATIONS' => 'Уведомления',
    'LBL_TOUR_NOTIFICATIONS_DESCRIPTION' => 'Suite application notifications would go here.',
    'LBL_TOUR_PROFILE' => 'Профиль',
    'LBL_TOUR_PROFILE_DESCRIPTION' => 'Доступ к профилю, настройкам и выходу.',
    'LBL_TOUR_QUICKCREATE' => 'Быстрое создание',
    'LBL_TOUR_QUICKCREATE_DESCRIPTION' => 'Быстрое создание записей, без потери вашего местоположения.',
    'LBL_TOUR_FOOTER' => 'Сворачивающийся футер',
    'LBL_TOUR_FOOTER_DESCRIPTION' => 'Показать/убрать футер без труда.',
    'LBL_TOUR_CUSTOM' => 'Пользовательские приложения',
    'LBL_TOUR_CUSTOM_DESCRIPTION' => 'Custom integrations would go here.',
    'LBL_TOUR_BRAND' => 'Ваш бренд',
    'LBL_TOUR_BRAND_DESCRIPTION' => 'Здесь ваш логотип. Наведите курсор мыши для получения более подробной информации.',
    'LBL_TOUR_WELCOME' => 'Добро пожаловать в SuiteCRM',
    'LBL_TOUR_WATCH' => 'Посмотрите, что нового в SuiteCRM',
    'LBL_TOUR_FEATURES' => '<ul style=""><li class="icon-ok">Новая упрощенная панель навигации</li><li class="icon-ok">Новый убиающийся футер</li><li class="icon-ok">Улучшенный поиск</li><li class="icon-ok">Обновлённое меню</li></ul><p>и многое другое!</p>',
    'LBL_TOUR_VISIT' => 'Для получения дополнительной информации, пожалуйста, посетите наше приложение',
    'LBL_TOUR_DONE' => 'Вы сделали!',
    'LBL_TOUR_REFERENCE_1' => 'Вы всегда можете ссылаться на наш',
    'LBL_TOUR_REFERENCE_2' => 'через ссылку «Форум Поддержки» под вкладкой профиля.',
    'LNK_TOUR_DOCUMENTATION' => 'документация',
    'LBL_TOUR_CALENDAR_URL_1' => 'Вы используете календарь совместно с другими приложениями, такими как MS Outlook или MS Exchange? Если да, то у вас новый URL-адрес. Этота новая, более защищённая ссылка, содержит персональный ключ, который предотвращает несанкционированную публикацию вашего календаря.',
    'LBL_TOUR_CALENDAR_URL_2' => 'Получить новую ссылку на ваш совместный календарь.',
    'LBL_ABOUT' => 'Справка',
    'LBL_CONTRIBUTORS' => 'Участники проекта',
    'LBL_ABOUT_SUITE' => 'О проекте SuiteCRM',
    'LBL_PARTNERS' => 'Партнёры',
    'LBL_FEATURING' => 'AOS, AOW, AOR, AOP, AOE и Reschedule модули SalesAgility.',

    'LBL_CONTRIBUTOR_SUITECRM' => 'Бесплатная альтернатива SuiteCRM с открытым исходным кодом',
    'LBL_CONTRIBUTOR_SECURITY_SUITE' => 'SecuritySuite Джейсона Эггерса',
    'LBL_CONTRIBUTOR_JJW_GMAPS' => 'JJWDesign Google Maps Джеффри Джей Волтерса',
    'LBL_CONTRIBUTOR_CONSCIOUS' => 'SuiteCRM LOGO предоставлено Conscious Solutions',
    'LBL_CONTRIBUTOR_RESPONSETAP' => 'Релиз SuiteCRM 7.3 в сотрудничестве с ResponseTap',
    'LBL_CONTRIBUTOR_GMBH' => 'Workflow Calculated Fields contributed by diligent technology & business consulting GmbH',

    'LBL_LANGUAGE_ABOUT' => 'О переводах SuiteCRM',
    'LBL_LANGUAGE_COMMUNITY_ABOUT' => 'Совместный перевод сообщества SuiteCRM',
    'LBL_LANGUAGE_COMMUNITY_PACKS' => 'Перевод, созданный с использованием Crowdin',

    'LBL_ABOUT_SUITE_2' => 'SuiteCRM распространяется под лицензией GPL3',
    'LBL_ABOUT_SUITE_4' => 'Весь исходный код проекта SuiteCRM является открытым и публикуется под лицензией GPL3',
    'LBL_ABOUT_SUITE_5' => 'Поддержка SuiteCRM осуществляется как на бесплатной, так и на платной основе',

    'LBL_SUITE_PARTNERS' => 'С полным списком наших партнёров, активно поддерживающих проекты с открытым исходным кодом, вы можете ознакомиться на нашем сайте',

);
