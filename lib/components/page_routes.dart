import 'package:flutter/material.dart';
import '../screens/price/price_screen.dart';
import '../screens/navigation/navigation_screen.dart';

class PageRoutes {
  static String _aerobicsTitle = 'Аэробика';
  static String _badmintonTitle = 'Бадминтон';
  static String _swimmingPoolTitle = 'Бассейн';
  static String _childrenCelebrationsTitle = 'Детские праздники';
  static String _tableTennisTitle = 'Настольный теннис';
  static String _climbingWallTitle = 'Скалодром';
  static String _tennisTitle = 'Теннис';
  static String _gymTitle = 'Тренажерный зал';
  static String _footballAndGamingHallsRoutesTitle = 'Футбольный и игровой зал';
  static String _rhythmicGymnasticsTitle = 'Художественная гимнастика';

  final Map<String, Widget> initialRoutes = {
    'assets/images/fitness_programs.jpg':
        NavigationScreen(title: _aerobicsTitle, cardsInfo: aerobicsRoutes),
    'assets/images/badminton.jpg':
        NavigationScreen(title: _badmintonTitle, cardsInfo: _badmintonRoutes),
    'assets/images/swimming_pool.jpg': NavigationScreen(
        title: _swimmingPoolTitle, cardsInfo: _swimmingPoolRoutes),
    'assets/images/children_celebrations.jpg': NavigationScreen(
        title: _childrenCelebrationsTitle,
        cardsInfo: _childrenCelebrationsRoutes),
    'assets/images/table_tennis.jpg': NavigationScreen(
        title: _tableTennisTitle, cardsInfo: _tableTennisRoutes),
    'assets/images/climbing_wall.jpg': NavigationScreen(
        title: _climbingWallTitle, cardsInfo: _climbingWallRoutes),
    'assets/images/tennis.png':
        NavigationScreen(title: _tennisTitle, cardsInfo: _tennisRoutes),
    'assets/images/gym.jpg':
        NavigationScreen(title: _gymTitle, cardsInfo: _gymRoutes),
    'assets/images/football_and_gaming_halls.jpg': NavigationScreen(
        title: _footballAndGamingHallsRoutesTitle,
        cardsInfo: _footballAndGamingHallsRoutes),
    'assets/images/rhythmic_gymnastics.jpg': NavigationScreen(
        title: _rhythmicGymnasticsTitle, cardsInfo: _rhythmicGymnasticsRoutes),
  };

  static Map<String, Widget> aerobicsRoutes = {
    'Групповое занятие': NavigationScreen(
      title: _aerobicsTitle,
      cardsInfo: <String, Widget>{
        'Разово': NavigationScreen(
          title: _aerobicsTitle,
          cardsInfo: <String, Widget>{
            '1 ч. занятие': PriceScreen(
              price:
                  'Стоимость разового посещения 1 часового группового занятия по аэробике составляет: 370р.\nСтоимость безлимитного абонемента на посещение групповых занятий по аэробике составляет: 2000р./мес.',
            ),
            '1,5 ч. занятие': PriceScreen(
              price:
                  'Стоимость разового посещения 1,5 часового группового занятия по аэробике составляет: 500р.\nСтоимость безлимитного абонемента на посещение групповых занятий по аэробике составляет: 2000р./мес.',
            ),
          },
        ),
        'По карте "Скала"': NavigationScreen(
          title: _aerobicsTitle,
          cardsInfo: <String, Widget>{
            '1 ч. занятие': PriceScreen(
              price:
                  'Стоимость посещения 1 часового группового занятия по аэробике по карте "Скала" составляет: 280р.\nСтоимость безлимитного абонемента на посещение групповых занятий по аэробике составляет: 2000р./мес.',
            ),
            '1,5 ч. занятие': PriceScreen(
              price:
                  'Стоимость посещения 1,5ч часового группового занятия по аэробике по карте "Скала" составляет: 420р.\nСтоимость безлимитного абонемента на посещение групповых занятий по аэробике составляет: 2000р./мес.',
            ),
          },
        ),
      },
    ),
    'Персональное занятие': NavigationScreen(
      title: _aerobicsTitle,
      cardsInfo: <String, Widget>{
        'Занятие для 1 человека': PriceScreen(
          price:
              'Стоимость посещения персонального занятия по аэробике для 1 человека составляет: 840р.',
        ),
        'Занятие для коммерческой группы (до 10 человек)': PriceScreen(
          price:
              'Стоимость посещения персонального занятия по аэробике для коммерческой группы (до 10 человек) составляет: 2300р.',
        ),
      },
    ),
  };

  static Map<String, Widget> _badmintonRoutes = {
    'До 17:00': PriceScreen(
      price:
          'Стоимость аренды площадки для бадминтона до 17:00 составляет: 420р.',
    ),
    'После 17:00': PriceScreen(
      price:
          'Стоимость аренды площадки для бадминтона после 17:00 составляет: 530.',
    ),
  };

  static Map<String, Widget> _childrenCelebrationsRoutes = {
    'От 2 до 15 чел.': PriceScreen(
      price:
          'Стоимость проведения детского праздника от 2 до 15 чел. составляет: 600р./чел.'
          '\nСтоимость тематического праздника составляет: 2000р.\nПосле окончания спортивного праздника можно арнедовать бар(2400р./ч.) и один зал(1000р./ч.)',
    ),
    'Больше 15 чел.': PriceScreen(
      price:
          'Стоимость проведения детского праздника больше 15 чел. составляет: 500р./чел.'
          '\nСтоимость тематического праздника составляет: 2000р.\nПосле окончания спортивного праздника можно арнедовать бар(2400р./ч.) и один зал(1000р./ч.)',
    ),
  };

  static Map<String, Widget> _climbingWallRoutes = {
    'Персональные треннировки': NavigationScreen(
      title: _climbingWallTitle,
      cardsInfo: {
        'Тест карта на 3 подъема': PriceScreen(
          price:
              'Стоимость персональной тренировки, включающую в себя 3 подъема, по тест карте составляет: 500р.',
        ),
        'Персональное 1ч. занятие': PriceScreen(
          price: 'Стоимость персонального 1 часового занятия составляет: 840р.',
        ),
      },
    ),
    'Групповые тренировки': NavigationScreen(
      title: _climbingWallTitle,
      cardsInfo: {
        'Урок для учебных заведений для группы от 10 человек': PriceScreen(
          price:
              'Стоимость урока для группы учебного заведения (от 10 человек) составляет: 160р./чел.',
        ),
        'Коммерческая группа 2-4 чел.': PriceScreen(
          price:
              'Стоимость групповой тренировки для группы 2-4 чел. составляет: 420р./чел.',
        ),
        'Школа скалолазания': NavigationScreen(
          title: _climbingWallTitle,
          cardsInfo: {
            'Начальная подготовка': NavigationScreen(
              title: _climbingWallTitle,
              cardsInfo: {
                'Разовое посещение': PriceScreen(
                  price:
                      'Стоимость разового посещения занятия по начальной подготовке в школе скалолазания составляет: 370р./ч.',
                ),
                'Абонемент на 3ак.ч/нед.': PriceScreen(
                  price:
                      'Стоимость абонемента на 3 ак.ч./нед. на посещение занятий по начальной подготовке в школе скалолазания составляет: 2800р./мес.',
                ),
              },
            ),
            'Спортивная подготовка': NavigationScreen(
              title: _climbingWallTitle,
              cardsInfo: {
                'Разовое посещение': PriceScreen(
                  price:
                      'Стоимость разового посещения занятия по спортивной подготовке в школе скалолазания составляет: 250р./ч.',
                ),
                'Абонемент на 6ак.ч/нед.': PriceScreen(
                  price:
                      'Стоимость абонемента на 6 ак.ч./нед. на посещение занятий по спортивной подготовке в школе скалолазания составляет: 3200р./мес.',
                ),
              },
            ),
          },
        ),
      },
    ),
    'Свободное лазание': NavigationScreen(
      title: _climbingWallTitle,
      cardsInfo: {
        'Разово': PriceScreen(
          price:
              'Стоимость разового свободного лазания на скалодроме составляет: 370р.',
        ),
        'По карте "Скала"': PriceScreen(
          price:
              'Стоимость свободного лазания на скалодроем по карте "Скала" составляет: 280р.',
        ),
      },
    ),
  };

  static Map<String, Widget> _footballAndGamingHallsRoutes = {
    'В будние дни': NavigationScreen(
      title: _footballAndGamingHallsRoutesTitle,
      cardsInfo: {
        'В будние дни до 12:00': PriceScreen(
          price:
              'Стоимость аренды футбольного или игрового зала в будние дни до 12:00 составляет: 1800р.',
        ),
        'В будние дни с 12:00 до 16:00': PriceScreen(
          price:
              'Стоимость аренды футбольного и игрового зала в будние дни с 12:00 до 16:00 составляет: 2000р.',
        ),
        'В будние дни после 16:00': PriceScreen(
          price:
              'Стоимость аренды футбольного и игрового зала в будние дни после 16:00 составляет: 2700.',
        ),
      },
    ),
    'В выходные дни': PriceScreen(
      price:
          'Стоимость аренды футбольного или игрового зала в выходные дни составляет: 2000р.',
    ),
  };

  static Map<String, Widget> _gymRoutes = {
    'Разово': NavigationScreen(
      title: _gymTitle,
      cardsInfo: {
        'До 16:00': PriceScreen(
          price:
              'Стоимость разового посещения тренажерного зала до 16:00 составляет: 296р.',
        ),
        'После 16:00': PriceScreen(
          price:
              'Стоимость разового посещения тренажерного зала после 16:00 составляет: 370р.',
        ),
        'Для студентов': PriceScreen(
          price:
              'Стоимость посещения тренажерного зала для студентов до 16:00 составляет: 190р.',
        ),
      },
    ),
    'По карте "Скала"': NavigationScreen(
      title: _gymTitle,
      cardsInfo: {
        'До 16:00': PriceScreen(
          price:
              'Стоимость посещения тренажерного зала до 16:00 по персональный карте "Скала" составляет: 224р.',
        ),
        'После 16:00': PriceScreen(
          price:
              'Стоимость посещения тренажерного зала после 16:00 по персональный карте "Скала" составляет: 280р.',
        ),
      },
    ),
    'Персональное занятие': NavigationScreen(
      title: _gymTitle,
      cardsInfo: {
        'Разово': PriceScreen(
          price:
              'Стоимость разового персонального занятия в тренажерном зале составляет: 840р.',
        ),
        'По карте': NavigationScreen(
          title: _gymTitle,
          cardsInfo: {
            'По карте "Премиум"': NavigationScreen(
              title: _gymTitle,
              cardsInfo: {
                'Разово': PriceScreen(
                  price:
                      'Стоимость разового персонального занятия в тренажерном зале по персональной карте "Премиум" составляет: 630р.',
                ),
                'По абонементу': PriceScreen(
                  price:
                      'Стоимость одного персонального занятия в тренажерном зале по абонементу на 8 занятий по персональной карте "Премиум" составляет: 500р.',
                ),
              },
            ),
            'По карте "Скала"': PriceScreen(
              price:
                  'Стоимость одного персонального занятия в тренажерном зале по абонементу на 8 занятий составляет: 740р.',
            ),
          },
        ),
      },
    ),
    'Составление программы тренировок': PriceScreen(
      price: 'Стоимость составления программы тренировок составляет: 530р.',
    ),
  };

  static Map<String, Widget> _rhythmicGymnasticsRoutes = {
    'Начальная подготовка': NavigationScreen(
      title: _rhythmicGymnasticsTitle,
      cardsInfo: {
        'Разово': PriceScreen(
          price:
              'Стоимость разового посещения занятия по художественной гимнастике начальной подготовки составляет: 370р.',
        ),
        'По абонементу': NavigationScreen(
          title: _rhythmicGymnasticsTitle,
          cardsInfo: {
            '2 ак.ч./нед.': PriceScreen(
              price:
                  'Стоимость 2 ак.ч./нед. занятий по художественной гимнастике в начальной группе в неделю по абонементу составляет: 2400р./мес.',
            ),
            '3 ак.ч./нед.': PriceScreen(
              price:
                  'Стоимость 3 ак.ч./нед. занятий по художественной гимнастике в неделю по абонементу составляет: 2800р./мес.',
            ),
          },
        ),
      },
    ),
    'Спортивная подготовка': NavigationScreen(
      title: _rhythmicGymnasticsTitle,
      cardsInfo: {
        'Разово': NavigationScreen(
          title: _rhythmicGymnasticsTitle,
          cardsInfo: {
            '2 часовое занятие': PriceScreen(
              price:
                  'Стоимость разового посещения 2-ух часового занятия по художественной гимнастике спортивной группы составляет: 500р.',
            ),
            '3 часовое занятие': PriceScreen(
              price:
                  'Стоимость разового посещения 3-ех часового занятия по художественной гимнастике спортивной группы составляет: 630р.',
            ),
          },
        ),
        'По абонементу': NavigationScreen(
          title: _rhythmicGymnasticsTitle,
          cardsInfo: {
            '8 ак.ч./нед.': PriceScreen(
              price:
                  'Стоимость 8 ак.ч./нед. занятий по художественной гимнастике в спортивной группе в неделю по абонементу составляет: 3700р./мес.',
            ),
            '15 ак.ч./нед.': PriceScreen(
              price:
                  'Стоимость 15 ак.ч./нед. занятий по художественной гимнастике в спортивной группе в неделю по абонементу составляет: 4000р./мес.',
            ),
            '20 ак.ч./нед.': PriceScreen(
              price:
                  'Стоимость 20 ак.ч./нед. занятий по художественной гимнастике в спортивной группе в неделю по абонементу составляет: 5000р./мес.',
            ),
          },
        ),
      },
    ),
    'Персональное занятие': PriceScreen(
      price:
          'Стоимость персонального занятия по художественной гимнастике составляет: 1050р./час.',
    ),
    'Аренда зала': PriceScreen(
      price:
          'Стоимость аренды большого зала для гимнастики составляет: 2500р./час.\nСтоимость аренды малого зала для гимнастики составляет: 1500р./час.',
    ),
  };

  static Map<String, Widget> _tableTennisRoutes = {
    'До 17:00': PriceScreen(
      price:
          'Стоимость настольного тенниса до 17:00 для одного человека составляет: 80р./ч.',
    ),
    'После 17:00': NavigationScreen(
      title: _tableTennisTitle,
      cardsInfo: {
        'Разово': PriceScreen(
          price:
              'Стоимость разового посещения настольного тенниса после 17:00 для одного человека составляет: 130р./ч.',
        ),
        'По абонементу': PriceScreen(
          price:
              'Стоимость одного посещения настольного тенниса после 17:00 при покупке абонемента на 8 посещений для одного человека составляет: 105р./ч.',
        ),
      },
    ),
    'По выходным': PriceScreen(
      price:
          'Стоимость настольного тенниса в выходные дни для одного человека составляет: 80р./ч.',
    ),
  };

  static Map<String, Widget> _tennisRoutes = {
    'Аренда корта': NavigationScreen(
      title: _tennisTitle,
      cardsInfo: {
        'До 17:00': PriceScreen(
          price: 'Стоимость аренды теннисного корта до 17:00 составляет: 800р.',
        ),
        'После 17:00': PriceScreen(
          price:
              'Стоимость аренды теннисного корта после 17:00 составляет: 1200р.',
        ),
        'Выходные дни': PriceScreen(
          price:
              'Стоимость аренды теннисного корта в выходные дни составляет: 800р.',
        ),
      },
    ),
    'Обучение': NavigationScreen(
      title: _tennisTitle,
      cardsInfo: {
        'Взрослые': NavigationScreen(
          title: _tennisTitle,
          cardsInfo: {
            'Персональное занятие': PriceScreen(
              price:
                  'Стоимость персонального занятия для взрослых по абонементу составляет: 1600р./час за 1 человека. Стоимость разового посещения без абонемента составляет: 1800р./час за 1 человека.',
            ),
            'Групповое занятие': PriceScreen(
              price:
                  'Стоимость группового занятия для взрослых составляет: 500р./час.',
            ),
          },
        ),
        'Дети': NavigationScreen(
          title: _tennisTitle,
          cardsInfo: {
            'Персональное занятие': PriceScreen(
              price:
                  'Стоимость персонального занятия для детей по абонементу составляет: 1400р./час за 1 ребенка. Стоимость разового посещения без абонемента составляет: 1600р./час за 1 ребенка.',
            ),
            'Школа тенниса': NavigationScreen(
              title: _tennisTitle,
              cardsInfo: {
                'Начальная подготовка': PriceScreen(
                  price:
                      'Стоимость обучения ребенка в школе тенниса в группе начальной подготовки по абонементу составляет: 3000р./мес. (3ч./неделю)',
                ),
                'Спортивная подготовка': PriceScreen(
                  price:
                      'Стоимость обучения ребенка в школе тенниса в группе спортивной подготовки по абонементу составляет: 5000р./мес. (4,5ч./неделю)',
                ),
              },
            ),
          },
        ),
      },
    ),
  };

  static Map<String, Widget> _swimmingPoolRoutes = {
    'Самостоятельные тренировки': NavigationScreen(
      title: _swimmingPoolTitle,
      cardsInfo: {
        'До 16:00': NavigationScreen(
          title: _swimmingPoolTitle,
          cardsInfo: {
            'Дети до 5 лет': PriceScreen(
              price:
                  'Посещение бассейна до 16:00 для детей до 5 лет бесплатно при покупке одного посещения для взрослых.',
            ),
            'Дети 6-14 лет': NavigationScreen(
              title: _swimmingPoolTitle,
              cardsInfo: {
                'Разово': PriceScreen(
                  price:
                      'Стоимость разового посещения бассейна для детей 6-14 лет до 16:00 составляет: 224р.',
                ),
                'По карте "Скала"': PriceScreen(
                  price:
                      'Стоимость посещения бассейна по карте "Скала" для детей 6-14 лет до 16:00 составляет: 176р.',
                ),
              },
            ),
            'Взрослые и дети от 14 лет': NavigationScreen(
              title: _swimmingPoolTitle,
              cardsInfo: {
                'Разово': PriceScreen(
                  price:
                      'Стоимость разового посещения бассейна для взрослых и детей от 14 лет до 16:00 составляет: 296р.',
                ),
                'По карте "Скала"': PriceScreen(
                  price:
                      'Стоимость посещения бассейна для взрослых и детей от 14 лет до 16:00 по карте "Скала" составляет: 224р.',
                ),
              },
            ),
          },
        ),
        'После 16:00': NavigationScreen(
          title: _swimmingPoolTitle,
          cardsInfo: {
            'Дети до 5 лет': PriceScreen(
              price:
                  'Посещение бассейна после 16:00 для детей до 5 лет бесплатно при покупке одного посещения для взрослых.',
            ),
            'Дети 5-14 лет': NavigationScreen(
              title: _swimmingPoolTitle,
              cardsInfo: {
                'Разово': PriceScreen(
                  price:
                      'Стоимость разового посещения бассейна для детей 5-14 лет после 16:00 составляет: 280р.',
                ),
                'По карте "Скала"': PriceScreen(
                  price:
                      'Стоимость посещения бассейна для детей 5-14 лет после 16:00 по карте "Скала" составляет: 220р',
                ),
              },
            ),
            'Взрослые и дети от 14 лет': NavigationScreen(
              title: _swimmingPoolTitle,
              cardsInfo: {
                'Разово': PriceScreen(
                  price:
                      'Стоимость разового посещения бассейна для взрослых и детей от 14 лет после 16:00 составляет: 370р',
                ),
                'По карте "Скала"': PriceScreen(
                  price:
                      'Стоимость посещения бассейна для взрослых и детей от 14 лет после 16:00 по карте "Скала" составляет: 280р',
                ),
              },
            ),
            'Последний сеанс 21:00 и 21:45': PriceScreen(
              price:
                  'Стоимость посещения последнего сеанса бассейна составляет: 200р.',
            ),
          },
        ),
        'Социальная группа до 16:00': PriceScreen(
          price:
              'Стоимость посещения бассейна до 16:00 для социальной группы* составляет: 160р.\n*Социальная группа: студенты, пенсионеры, инвалиды, многодетные семьи. Необходимо предоставить подтверждающий документ.',
        ),
      },
    ),
    'Обучение плаванию': NavigationScreen(
      title: _swimmingPoolTitle,
      cardsInfo: {
        'Персональное занятие': PriceScreen(
          price:
              'Стоимость персонального занятия по обучению плаванию составляет: 1200р.',
        ),
        'Групповое занятие': NavigationScreen(
          title: _swimmingPoolTitle,
          cardsInfo: {
            'Разовое посещение': PriceScreen(
              price:
                  'Стоимость разового посещения группового занятия по плаванию составляет: 420р.',
            ),
            'Абонемент на 8 посещений на 2 мес.': PriceScreen(
              price:
                  'Стоимость абонемента на 8 посещений (срок действия 2 месяца) составляет: 2800р.',
            ),
            'Коммерческая группа 2-4 чел.': PriceScreen(
              price:
                  'Стоимость группового занятия для коммерческой группы от 2-ух чел. составляет: 630р./чел.',
            ),
          },
        ),
      },
    ),
    '"Аква Бэйби"': NavigationScreen(
      title: _swimmingPoolTitle,
      cardsInfo: {
        'Разовое посещение': PriceScreen(
          price: 'Стоимость разового посещения "Аква Бэйби" составляет: 420р.',
        ),
        'По карте "Скала"': PriceScreen(
          price:
              'Стоимость посещения "Аква Бэйби" по карте "Скала" составляет: 320р.',
        ),
      },
    ),
    'Аренда': NavigationScreen(
      title: _swimmingPoolTitle,
      cardsInfo: {
        '1 дорожка': PriceScreen(
          price: 'Стоимость аренды одной дорожки бассейна составляет: 2500р.',
        ),
        'Весь бассейн': PriceScreen(
          price: 'Стоимость аренды бассейна полностью составляет: 6500р.',
        ),
      },
    ),
  };
}
