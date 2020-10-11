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
  static String _rhythmicGymnasticsTitle = 'Худ. гимнастика';
  static String _bathComplexTitle = 'Банный комплекс';
  static String _personalDiscount = 'Персональные скидки';

  final Map<String, Widget> initialRoutes = {
    'assets/images/fitness_programs.jpg': NavigationScreen(
      title: _aerobicsTitle,
      cardsInfo: aerobicsRoutes,
    ),
    'assets/images/badminton.jpg': NavigationScreen(
      title: _badmintonTitle,
      cardsInfo: _badmintonRoutes,
    ),
    'assets/images/swimming_pool.jpg': NavigationScreen(
      title: _swimmingPoolTitle,
      cardsInfo: _swimmingPoolRoutes,
    ),
    'assets/images/children_celebrations.jpg': NavigationScreen(
      title: _childrenCelebrationsTitle,
      cardsInfo: _childrenCelebrationsRoutes,
    ),
    'assets/images/table_tennis.jpg': NavigationScreen(
      title: _tableTennisTitle,
      cardsInfo: _tableTennisRoutes,
    ),
    'assets/images/climbing_wall.jpg': NavigationScreen(
      title: _climbingWallTitle,
      cardsInfo: _climbingWallRoutes,
    ),
    'assets/images/tennis.png': NavigationScreen(
      title: _tennisTitle,
      cardsInfo: _tennisRoutes,
    ),
    'assets/images/gym.jpg': NavigationScreen(
      title: _gymTitle,
      cardsInfo: _gymRoutes,
    ),
    'assets/images/football_and_gaming_halls.jpg': NavigationScreen(
      title: _footballAndGamingHallsRoutesTitle,
      cardsInfo: _footballAndGamingHallsRoutes,
    ),
    'assets/images/rhythmic_gymnastics.jpg': NavigationScreen(
      title: _rhythmicGymnasticsTitle,
      cardsInfo: _rhythmicGymnasticsRoutes,
    ),
    'assets/images/bath_complex.jpg': NavigationScreen(
      title: _bathComplexTitle,
      cardsInfo: _bathComplexRoutes,
    ),
    'assets/images/personal_discounts.jpg': NavigationScreen(
      title: _personalDiscount,
      cardsInfo: _personalDiscountRoutes,
    ),
  };

  static Map<String, Widget> aerobicsRoutes = {
    'Групповое занятие': NavigationScreen(
      title: _aerobicsTitle,
      cardsInfo: <String, Widget>{
        'Разовое посещение': NavigationScreen(
          title: _aerobicsTitle,
          cardsInfo: <String, Widget>{
            '1 ч. занятие': PriceScreen(
              serviceName:
              'Разовое посещение 1 часового группового занятия по аэробике',
              price: 370,
              pricePostfix: '₽',
              additionalInfo:
              'Доп.информация:\nСтоимость безлимитного абонемента на посещение групповых занятий по аэробике составляет: 2000 ₽/мес.',
            ),
            '1,5 ч. занятие': PriceScreen(
              serviceName: 'Разовое посещение 1,5 часового группового занятия',
              price: 500,
              pricePostfix: '₽',
            ),
          },
        ),
        'По карте "Скала"': NavigationScreen(
          title: _aerobicsTitle,
          cardsInfo: <String, Widget>{
            '1 ч. занятие': PriceScreen(
              serviceName:
              'Посещение 1 часового группового занятия по аэробике',
              additionalInfo:
              'Доп.информация:\nСтоимость безлимитного абонемента на посещение групповых занятий по аэробике составляет: 2000 ₽/мес.',
              pricePrefix: 'Стоимость по карте "Скала":',
              price: 280,
              pricePostfix: '₽',
            ),
            '1,5 ч. занятие': PriceScreen(
              serviceName:
              'Посещение 1,5 часового группового занятия по аэробике',
              pricePrefix: 'Стоимость по карте "Скала":',
              price: 420,
              pricePostfix: '₽',
            ),
          },
        ),
      },
    ),
    'Персональное занятие': NavigationScreen(
      title: _aerobicsTitle,
      cardsInfo: <String, Widget>{
        'Занятие для 1 чел.': NavigationScreen(
          title: _aerobicsTitle,
          cardsInfo: <String, Widget>{
            'Разово': PriceScreen(
              serviceName: 'Персональное занятие по аэробике для 1 человека',
              price: 840,
              pricePostfix: '₽',
            ),
            'По абонементу': NavigationScreen(
              title: _aerobicsTitle,
              cardsInfo: <String, Widget>{
                'Абонемент на 4 занятий': NavigationScreen(
                  title: _aerobicsTitle,
                  cardsInfo: <String, Widget>{
                    'По карте "Скала"': PriceScreen(
                      serviceName:
                      'Абонемент на посещение 4 персональных занятий по аэробике',
                      additionalInfo:
                      'Доп.информация:\nСрок действия абонемента: 1 мес.',
                      pricePrefix: 'Стоимость по карте "Скала":',
                      price: 3200,
                      pricePostfix: '₽',
                    ),
                    'По карте "Премиум"': PriceScreen(
                      serviceName:
                      'Абонемент на посещение 4 персональных занятий по аэробике',
                      additionalInfo:
                      'Доп.информация:\nСрок действия абонемента: 1 мес.',
                      pricePrefix: 'Стоимость по карте "Премиум":',
                      price: 2160,
                      pricePostfix: '₽',
                    ),
                  },
                ),
                'Абонемент на 8 занятий': NavigationScreen(
                  title: _aerobicsTitle,
                  cardsInfo: <String, Widget>{
                    'По карте "Скала"': PriceScreen(
                      serviceName:
                      'Абонемент на посещение 8 персональных занятий по аэробике',
                      additionalInfo:
                      'Доп.информация:\nСрок действия абонемента: 1 мес.',
                      pricePrefix: 'Стоимость по карте "Скала":',
                      price: 5920,
                      pricePostfix: '₽',
                    ),
                    'По карте "Премиум"': PriceScreen(
                      serviceName:
                      'Абонемент на посещение 8 персональных занятий по аэробике',
                      additionalInfo:
                      'Доп.информация:\nСрок действия абонемента: 1 мес.',
                      pricePrefix: 'Стоимость по карте "Премиум":',
                      price: 4000,
                      pricePostfix: '₽',
                    ),
                  },
                ),
              },
            ),
          },
        ),
        'Занятие для коммерческой группы (до 10 чел.)': PriceScreen(
          serviceName:
          'Персональное занятие по аэробике для коммерческой группы (до 10 человек)',
          price: 2300,
          pricePostfix: '₽',
        ),
      },
    ),
  };

  static Map<String, Widget> _badmintonRoutes = <String, Widget>{
    'До 17:00': PriceScreen(
      serviceName: 'Аренда площадки для бадминтона до 17:00',
      price: 420,
      pricePostfix: '₽',
    ),
    'После 17:00': PriceScreen(
      serviceName: 'Аренда площадки для бадминтона после 17:00',
      price: 530,
      pricePostfix: '₽',
    ),
  };

  static Map<String, Widget> _childrenCelebrationsRoutes = <String, Widget>{
    'От 2 до 15 чел.': PriceScreen(
      serviceName: 'Проведение детского праздника (от 2 до 15 человек)',
      additionalInfo:
      'Доп.информация:\nПроведение тематического праздника: +2000 ₽ к основной стоимости проведения праздника'
          '\nПосле окончания спортивного праздника можно арендовать бар(2400 ₽/ч.) и малый зал(1000 ₽/ч.)',
      price: 600,
      pricePostfix: '₽/чел.',
    ),
    'Больше 15 чел.': PriceScreen(
      serviceName: 'Проведение детского праздника (больше 15 человек)',
      additionalInfo:
      'Доп.информация:\nПроведение тематического праздника: +2000 ₽ к основной стоимости проведения праздника'
          '\nПосле окончания спортивного праздника можно арендовать бар(2400 ₽/ч.) и малый зал(1000 ₽/ч.)',
      price: 500,
      pricePostfix: '₽/чел.',
    ),
  };

  static Map<String, Widget> _climbingWallRoutes = <String, Widget>{
    'Персональные треннировки': NavigationScreen(
      title: _climbingWallTitle,
      cardsInfo: <String, Widget>{
        'Персональная тренировка на 3 подъема': PriceScreen(
          serviceName: 'Персональная тренировка на 3 подъема',
          additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00\n\nСтраховка инструктором, базовый инструктаж. Прокат системы входит в стоимость услуги',
          pricePrefix: 'Стоимость по тест карте:',
          price: 500,
          pricePostfix: '₽',
        ),
        'Персональное 1ч. занятие': PriceScreen(
          serviceName: 'Персональное 1 часовое занятие',
          additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00',
          price: 840,
          pricePostfix: '₽',
        ),
      },
    ),
    'Групповые тренировки': NavigationScreen(
      title: _climbingWallTitle,
      cardsInfo: <String, Widget>{
        'Урок для учебных заведений для группы от 10 чел.': PriceScreen(
          serviceName: 'Урок для группы учебного завдеения (от 10 человек)',
          additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00\n\nНеобходимо иметь сменную обувь',
          price: 160,
          pricePostfix: '₽/чел.',
        ),
        'Коммерческая группа 2-4 чел.': PriceScreen(
          serviceName: 'Групповая тренировка для группы 2-4 чел.',
          additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00\n\nПрокат снаряжения входит в стоимость услуги',
          price: 420,
          pricePostfix: '₽/чел.',
        ),
        'Школа скалолазания': NavigationScreen(
          title: _climbingWallTitle,
          cardsInfo: <String, Widget>{
            'Начальная подготовка': NavigationScreen(
              title: _climbingWallTitle,
              cardsInfo: <String, Widget>{
                'Разовое посещение': PriceScreen(
                  serviceName:
                  'Разовое посещение занятия по начальной подготовке в школе скалолазания',
                  additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00',
                  price: 370,
                  pricePostfix: '₽/ч.',
                ),
                'Абонемент на 3 ак.ч/нед.': PriceScreen(
                  serviceName:
                  'Абонемент на посещение занятий по начальной подготовке в школе скалолазания (3 ак.ч/нед.)',
                  additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00',
                  price: 2800,
                  pricePostfix: '₽/мес.',
                ),
              },
            ),
            'Спортивная подготовка': NavigationScreen(
              title: _climbingWallTitle,
              cardsInfo: <String, Widget>{
                'Разовое посещение': PriceScreen(
                  serviceName:
                  'Разовое посещение занятия по спортивной подготовке в школе скалолазания',
                  additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00',
                  price: 500,
                  pricePostfix: '₽/ч.',
                ),
                'Абонемент на 6 ак.ч/нед.': PriceScreen(
                  serviceName:
                  'Абонемент на посещение занятий по спортивной подготовке в школе скалолазания (6 ак.ч/нед.)',
                  additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00',
                  price: 3200,
                  pricePostfix: '₽/мес.',
                ),
              },
            ),
          },
        ),
      },
    ),
    'Свободное лазание': NavigationScreen(
      title: _climbingWallTitle,
      cardsInfo: <String, Widget>{
        'Разово': PriceScreen(
          serviceName: 'Свободное лазание на скалодроме',
          additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00\n\nСнаряжение своё или напрокат за дополнительную плату.\nУсловие: не мешать работе групп по обучению.',
          price: 370,
          pricePostfix: '₽',
        ),
        'По карте "Скала"': PriceScreen(
          serviceName: 'Свободное лазание на скалодроме',
          additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00\n\nСнаряжение своё или напрокат за дополнительную плату.\nУсловие: не мешать работе групп по обучению.',
          pricePrefix: 'Стоимость по карте "Скала":',
          price: 280,
          pricePostfix: '₽',
        ),
        'Взрослый или ребёнок от 12 лет': PriceScreen(
          serviceName: 'Свободное лазание для взрослого или ребёнка от 12 лет',
          additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00',
          price: 280,
          pricePostfix: '₽',
        ),
        'Семейный №1 (взрослый + ребёнок)': PriceScreen(
          serviceName: 'Свободное лазание для семьи (взрослый + ребёнок)',
          additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00',
          price: 500,
          pricePostfix: '₽',
        ),
        'Семейный №2 (взрослый + 2 ребёнка)': PriceScreen(
          serviceName:
          'Свободное лазание для большой семьи (взрослый + 2 ребёнка)',
          additionalInfo: 'Доп.информация:\nСкалодром работает по предварительной записи в будни с 14:00 до 21:00 и в выходные с 10:00 до 20:00',
          price: 700,
          pricePostfix: '₽',
        ),
      },
    ),
  };

  static Map<String, Widget> _footballAndGamingHallsRoutes = {
    'В будние дни': NavigationScreen(
      title: _footballAndGamingHallsRoutesTitle,
      cardsInfo: <String, Widget>{
        'В будние дни до 12:00': PriceScreen(
          serviceName:
          'Аренда футбольного или игрового зала в будние дни до 12:00',
          price: 1800,
          pricePostfix: '₽',
        ),
        'В будние дни с 12:00 до 16:00': PriceScreen(
          serviceName:
          'Аренда футбольного и игрового зала в будние дни с 12:00 до 16:00',
          price: 2000,
          pricePostfix: '₽',
        ),
        'В будние дни после 16:00': PriceScreen(
          serviceName:
          'Аренда футбольного и игрового зала в будние дни после 16:00',
          price: 2700,
          pricePostfix: '₽',
        ),
      },
    ),
    'В выходные дни': PriceScreen(
      serviceName: 'Аренда футбольного или игрового зала в выходные дни',
      price: 2000,
      pricePostfix: '₽',
    ),
  };

  static Map<String, Widget> _gymRoutes = <String, Widget>{
    'Разово': NavigationScreen(
      title: _gymTitle,
      cardsInfo: <String, Widget>{
        'До 16:00': PriceScreen(
          serviceName: 'Разовое посещение тренажерного зала до 16:00',
          price: 296,
          pricePostfix: '₽',
        ),
        'После 16:00': PriceScreen(
          serviceName: 'Разовое посещение тренажерного зала после 16:00',
          price: 370,
          pricePostfix: '₽',
        ),
        'Для студентов': PriceScreen(
          serviceName:
          'Разовое посещение тренажерного зала для студентов до 16:00',
          price: 190,
          pricePostfix: '₽',
        ),
      },
    ),
    'По карте "Скала"': NavigationScreen(
      title: _gymTitle,
      cardsInfo: <String, Widget>{
        'До 16:00': PriceScreen(
          serviceName: 'Разовое посещение тренажерного зала до 16:00',
          pricePrefix: 'Стоимость по карте "Скала":',
          price: 224,
          pricePostfix: '₽',
        ),
        'После 16:00': PriceScreen(
          serviceName: 'Разовое посещение тренажерного зала после 16:00',
          pricePrefix: 'Стоимость по карте "Скала":',
          price: 280,
          pricePostfix: '₽',
        ),
      },
    ),
    'Персональное занятие': NavigationScreen(
      title: _gymTitle,
      cardsInfo: <String, Widget>{
        'Разово': PriceScreen(
          serviceName: 'Разовое персональное занятие в тренажерном зале',
          price: 840,
          pricePostfix: '₽',
        ),
        'По карте': NavigationScreen(
          title: _gymTitle,
          cardsInfo: <String, Widget>{
            'По карте "Премиум"': NavigationScreen(
              title: _gymTitle,
              cardsInfo: <String, Widget>{
                'Разово': PriceScreen(
                  serviceName:
                  'Разовое персональное занятие в тренажерном зале',
                  pricePrefix: 'Стоимость по карте "Премиум":',
                  price: 630,
                  pricePostfix: '₽',
                ),
                'По абонементу': PriceScreen(
                  serviceName:
                  'Одно персональное занятие в тренажерном зале по абонементу на 8 занятий',
                  additionalInfo:
                  'Доп.информация:\nСтоимость абонемента на 8 персональных занятий в тренажерном зале по карте "Премиум" составляет: 4000 ₽\n\nСтоимость абонемента на 4 персональных занятия в тренажерном зале по карте "Премиум" составляет: 2160 ₽\n\nСрок действия абонементов: 1 мес.',
                  pricePrefix: 'Стоимость по карте "Премиум":',
                  price: 500,
                  pricePostfix: '₽',
                ),
              },
            ),
            'По карте "Скала"': PriceScreen(
              serviceName:
              'Одно персональное занятие в тренажерном зале по абонементу на 8 занятий',
              additionalInfo:
              'Доп.информация:\nСтоимость абонемента на 8 персональных занятий в тренажерном зале по карте "Скала" составляет: 5920 ₽\n\nСтоимость абонемента на 4 персональных занятия в тренажерном зале по карте "Скала" составляет: 3200 ₽\n\nСрок действия абонементов: 1 мес.',
              pricePrefix: 'Стоимость по карте "Скала":',
              price: 740,
              pricePostfix: '₽',
            ),
          },
        ),
      },
    ),
    'Составление программы тренировок': PriceScreen(
      serviceName: 'Составление программы тренировок',
      price: 530,
      pricePostfix: '₽',
    ),
  };

  static Map<String, Widget> _rhythmicGymnasticsRoutes = <String, Widget>{
    'Начальная подготовка': NavigationScreen(
      title: _rhythmicGymnasticsTitle,
      cardsInfo: <String, Widget>{
        'Разово': PriceScreen(
          serviceName:
          'Разовое посещение занятия начальной подготовки по художественной гимнастике',
          price: 370,
          pricePostfix: '₽',
        ),
        'По абонементу': NavigationScreen(
          title: _rhythmicGymnasticsTitle,
          cardsInfo: <String, Widget>{
            'Абонемент на 2 ак.ч./нед.': PriceScreen(
              serviceName:
              'Абонемент на посещение занятий по художественной гимнастике в начальной группе (2 ак.ч/нед.)',
              price: 2400,
              pricePostfix: '₽/мес.',
            ),
            'Абонемент 3 ак.ч./нед.': PriceScreen(
              serviceName:
              'Абонемент на посещение занятий по художественной гимнастике в начальной группе (3 ак.ч/нед.)',
              price: 2800,
              pricePostfix: '₽/мес.',
            ),
          },
        ),
      },
    ),
    'Спортивная подготовка': NavigationScreen(
      title: _rhythmicGymnasticsTitle,
      cardsInfo: <String, Widget>{
        'Разово': NavigationScreen(
          title: _rhythmicGymnasticsTitle,
          cardsInfo: <String, Widget>{
            '2 ч. занятие': PriceScreen(
              serviceName:
              'Разовое посещение 2-ух часового занятия спортивной подготовки по художественной гимнастике',
              price: 500,
              pricePostfix: '₽',
            ),
            '3 ч. занятие': PriceScreen(
              serviceName:
              'Разовое посещение 3-ех часового занятия спортивной подготовки по художественной гиманстике',
              price: 630,
              pricePostfix: '₽',
            ),
          },
        ),
        'По абонементу': NavigationScreen(
          title: _rhythmicGymnasticsTitle,
          cardsInfo: <String, Widget>{
            'Абонемент на 8 ак.ч./нед.': PriceScreen(
              serviceName:
              'Абонемент на посещение занятий по художественной гимнастике в группе спортивной подготовки (8 ак.ч/нед.)',
              price: 3700,
              pricePostfix: '₽/мес.',
            ),
            'Абонемент на 15 ак.ч./нед.': PriceScreen(
              serviceName:
              'Абонемент на посещение занятий по художественной гимнастике в группе спортивной подготовки (15 ак.ч./нед.)',
              price: 4000,
              pricePostfix: '₽/мес.',
            ),
            'Абонемент на 20 ак.ч./нед.': PriceScreen(
              serviceName:
              'Абонемент на посещение занятий по художественной гимнастике в группе спортивной подготовки (20 ак.ч./нед.)',
              price: 5000,
              pricePostfix: '₽/мес.',
            ),
          },
        ),
      },
    ),
    'Персональное занятие по художественной гимнастике, хореографии':
    PriceScreen(
      serviceName: 'Персональное занятие по художественной гимнастике',
      price: 1050,
      pricePostfix: '₽/ч.',
    ),
    'Эстетическая гимнастика\n(от 8 лет)': NavigationScreen(
      title: _rhythmicGymnasticsTitle,
      cardsInfo: <String, Widget>{
        'Разово': NavigationScreen(
          title: _rhythmicGymnasticsTitle,
          cardsInfo: <String, Widget>{
            '1 ч. занятие': PriceScreen(
              serviceName:
              'Разовое посещение 1 часового занятия по эстетической гимнастике',
              additionalInfo:
              'Доп.информация:\nПосещение занятий для детей от 8 лет',
              price: 370,
              pricePostfix: '₽',
            ),
            '2 ч. занятие': PriceScreen(
              serviceName:
              'Разовое посещение 2 часового занятия по эстетической гимнастике',
              additionalInfo:
              'Доп.информация:\nПосещение занятий для детей от 8 лет',
              price: 500,
              pricePostfix: '₽',
            ),
          },
        ),
        'Абонемент на 4 ак.ч/нед.': PriceScreen(
          serviceName:
          'Абонемент на посещение занятий по эстетической гимнастике (4 ак.ч/нед.)',
          additionalInfo:
          'Доп.информация:\nПосещение занятий для детей от 8 лет',
          price: 3000,
          pricePostfix: '₽/мес.',
        ),
      },
    ),
    'Аренда зала': NavigationScreen(
      title: _rhythmicGymnasticsTitle,
      cardsInfo: <String, Widget>{
        'Большой зал': PriceScreen(
          serviceName: 'Аренда большого зала для гимнастики',
          price: 2500,
          pricePostfix: '₽/ч.',
        ),
        'Малый зал': PriceScreen(
          serviceName: 'Аренда малого зала для гимнастики',
          price: 1500,
          pricePostfix: '₽/ч.',
        ),
      },
    ),
  };

  static Map<String, Widget> _tableTennisRoutes = <String, Widget>{
    'До 17:00': PriceScreen(
      serviceName:
      'Разовое посещение занятия по настольному теннису до 17:00 для одного человека',
      price: 80,
      pricePostfix: '₽/ч.',
    ),
    'После 17:00': NavigationScreen(
      title: _tableTennisTitle,
      cardsInfo: <String, Widget>{
        'Разово': PriceScreen(
          serviceName:
          'Разовое посещение занятия по настольному теннису после 17:00 для одного человека',
          price: 130,
          pricePostfix: '₽/ч.',
        ),
        'По абонементу': PriceScreen(
          serviceName:
          'Одно посещение занятия по настольному теннису после 17:00 по абонементу на 8 посещений для одного человека',
          price: 105,
          pricePostfix: '₽/ч.',
        ),
      },
    ),
    'По выходным': PriceScreen(
      serviceName:
      'Разовое посещение занятия по настольному теннису в выходные дни для одного человека',
      price: 80,
      pricePostfix: '₽/ч.',
    ),
  };

  static Map<String, Widget> _tennisRoutes = <String, Widget>{
    'Аренда корта': NavigationScreen(
      title: _tennisTitle,
      cardsInfo: {
        'До 17:00': PriceScreen(
          serviceName: 'Аренда теннисного корта до 17:00',
          price: 800,
          pricePostfix: '₽',
        ),
        'После 17:00': PriceScreen(
          serviceName: 'Аренда теннисного корта после 17:00',
          price: 1200,
          pricePostfix: '₽',
        ),
        'Выходные дни': PriceScreen(
          serviceName: 'Аренда теннисного корта в выходные дни',
          price: 800,
          pricePostfix: '₽',
        ),
      },
    ),
    'Обучение': NavigationScreen(
      title: _tennisTitle,
      cardsInfo: <String, Widget>{
        'Взрослые': NavigationScreen(
          title: _tennisTitle,
          cardsInfo: <String, Widget>{
            'Персональное занятие': NavigationScreen(
              title: _tennisTitle,
              cardsInfo: <String, Widget>{
                'Разовое посещение': PriceScreen(
                  serviceName:
                  'Разовое посещение персонального занятия по теннису для 1 человека',
                  price: 1800,
                  pricePostfix: '₽/ч.',
                ),
                'По абонементу': PriceScreen(
                  serviceName:
                  'Разовое посещение персонального занятия по теннису по абонементу для 1 человека',
                  price: 1600,
                  pricePostfix: '₽/ч.',
                ),
              },
            ),
            'Групповое занятие': PriceScreen(
              serviceName: 'Посещение группового занятия для взрослых',
              price: 500,
              pricePostfix: '₽/ч.',
            ),
          },
        ),
        'Дети': NavigationScreen(
          title: _tennisTitle,
          cardsInfo: <String, Widget>{
            'Персональное занятие': NavigationScreen(
              title: _tennisTitle,
              cardsInfo: <String, Widget>{
                'Разовое посещение': PriceScreen(
                  serviceName:
                  'Разовое посещение персонального занятия по теннису для 1 ребенка',
                  price: 1600,
                  pricePostfix: '₽/ч.',
                ),
                'По абонементу': PriceScreen(
                  serviceName:
                  'Разовое посещение персонального занятия по теннису по абонементу для 1 ребенка',
                  price: 1400,
                  pricePostfix: '₽/ч.',
                ),
              },
            ),
            'Школа тенниса': NavigationScreen(
              title: _tennisTitle,
              cardsInfo: <String, Widget>{
                'Начальная подготовка': PriceScreen(
                  serviceName:
                  'Обучение ребенка в школе тенниса в группе начальной подготовки по абонементу (3ч./нед.)',
                  price: 3000,
                  pricePostfix: '₽/мес.',
                ),
                'Спортивная подготовка': PriceScreen(
                  serviceName:
                  'Обучение ребенка в кшоле тенниса в группе спортивной подготовки по абонементу (4,5ч./нед.)',
                  price: 5000,
                  pricePostfix: '₽/мес.',
                ),
              },
            ),
          },
        ),
      },
    ),
  };

  static Map<String, Widget> _swimmingPoolRoutes = <String, Widget>{
    'Самостоятельные тренировки': NavigationScreen(
      title: _swimmingPoolTitle,
      cardsInfo: <String, Widget>{
        'До 16:00': NavigationScreen(
          title: _swimmingPoolTitle,
          cardsInfo: <String, Widget>{
            'Дети до 5 лет': PriceScreen(
              serviceName:
              'Разовое посещение бассейна до 16:00 для детей до 5 лет',
              additionalInfo:
              'Доп.информация:\nУслуга бесплатна только при покупке одного поещения в бассейн для взрослых',
              price: 0,
              pricePostfix: '₽',
            ),
            'Дети 6-14 лет': NavigationScreen(
              title: _swimmingPoolTitle,
              cardsInfo: <String, Widget>{
                'Разово': PriceScreen(
                  serviceName:
                  'Разовое посещение бассейна до 16:00 для детей 6-14 лет',
                  price: 224,
                  pricePostfix: '₽',
                ),
                'По карте "Скала"': PriceScreen(
                  serviceName:
                  'Разовое посещение бассейна до 16:00 для детей 6-14 лет',
                  pricePrefix: 'Стоимость по карте "Скала":',
                  price: 176,
                  pricePostfix: '₽',
                ),
              },
            ),
            'Взрослые и дети от 14 лет': NavigationScreen(
              title: _swimmingPoolTitle,
              cardsInfo: <String, Widget>{
                'Разово': PriceScreen(
                  serviceName:
                  'Разовое посещение бассейна до 16:00 для взрослых и детей от 14 лет',
                  price: 296,
                  pricePostfix: '₽',
                ),
                'По карте "Скала"': PriceScreen(
                  serviceName:
                  'Разовое посещение бассейна до 16:00 для взрослых и детей от 14 лет',
                  pricePrefix: 'Стоимость по карте "Скала":',
                  price: 224,
                  pricePostfix: '₽',
                ),
              },
            ),
          },
        ),
        'После 16:00': NavigationScreen(
          title: _swimmingPoolTitle,
          cardsInfo: <String, Widget>{
            'Дети до 5 лет': PriceScreen(
              serviceName:
              'Разовое посещение бассейна после 16:00 для детей до 5 лет',
              additionalInfo:
              'Доп.информация:\nУслуга бесплатна только при покупке одного посещения в бассейн для взрослых',
              price: 0,
              pricePostfix: '₽',
            ),
            'Дети 5-14 лет': NavigationScreen(
              title: _swimmingPoolTitle,
              cardsInfo: <String, Widget>{
                'Разово': PriceScreen(
                  serviceName:
                  'Разовое посещение бассейна после 16:00 для детей 6-14 лет',
                  price: 280,
                  pricePostfix: '₽',
                ),
                'По карте "Скала"': PriceScreen(
                  serviceName:
                  'Разовое посещение бассейна после 16:00 для детей 6-14 лет',
                  pricePrefix: 'Стоимость по карте "Скала":',
                  price: 220,
                  pricePostfix: '₽',
                ),
              },
            ),
            'Взрослые и дети от 14 лет': NavigationScreen(
              title: _swimmingPoolTitle,
              cardsInfo: {
                'Разово': PriceScreen(
                  serviceName:
                  'Разовое посещение бассейна после 16:00 для взрослых и детей от 14 лет',
                  price: 370,
                  pricePostfix: '₽',
                ),
                'По карте "Скала"': PriceScreen(
                  serviceName:
                  'Разовое посещение бассейна после 16:00 для взрослых и детей от 14 лет',
                  pricePrefix: 'Стоимость по карте "Скала":',
                  price: 280,
                  pricePostfix: '₽',
                ),
              },
            ),
            'Последний сеанс 21:00 и 21:45': PriceScreen(
              serviceName:
              'Посещение последнего сеанса бассейна (21:00 и 21:45)',
              price: 200,
              pricePostfix: '₽',
            ),
          },
        ),
        'Социальная группа до 16:00': PriceScreen(
          serviceName: 'Разовое посещение бассейна до 16:00',
          additionalInfo:
          'Доп.информация:\nСоциальная группа: студенты, пенсионеры, инвалиды, многодетные семьи. Необходимо предоставить подтверждающий документ',
          price: 160,
          pricePostfix: '₽',
        ),
        'Урок физкультуры для учебных заведений': PriceScreen(
          serviceName:
          'Проведение в бассейне урока физкультуры учебными заведениями до 16:00',
          additionalInfo:
          'Доп.информация:\nПроведение занятий возможно только для группы более 10 человек',
          price: 200,
          pricePostfix: '₽',
        ),
        /*PriceScreen(
          price:
              'Стоимость урока физкультуры для учебных заведений до 16:00 для группы от 10 чел. составляет: 200р.',
        ),*/
      },
    ),
    'Обучение плаванию': NavigationScreen(
      title: _swimmingPoolTitle,
      cardsInfo: <String, Widget>{
        'Персональное занятие': PriceScreen(
          serviceName: 'Персональное занятие по обучению плаванию',
          price: 1000,
          pricePostfix: '₽',
        ),
        'Групповое занятие': NavigationScreen(
          title: _swimmingPoolTitle,
          cardsInfo: <String, Widget>{
            'Разовое посещение': PriceScreen(
              serviceName: 'Разовое посещение группового занятия по плаванию',
              price: 420,
              pricePostfix: '₽',
            ),
            'Абонемент на 8 посещений': PriceScreen(
              serviceName: 'Абонемент на 8 посещений бассейна',
              additionalInfo:
              'Доп.информация:\nСрок действия абонемента: 2 месяца',
              price: 2800,
              pricePostfix: '₽',
            ),
            'Коммерческая группа 2-4 чел.': PriceScreen(
              serviceName: 'Групповое занятие для коммерческой группы 2-4 чел.',
              price: 630,
              pricePostfix: '₽/чел.',
            ),
          },
        ),
      },
    ),
    'Акваэробика': NavigationScreen(
      title: _swimmingPoolTitle,
      cardsInfo: <String, Widget>{
        'Разовое посещение': PriceScreen(
          serviceName: 'Разовое посещение акваэробики',
          price: 420,
          pricePostfix: '₽',
        ),
        'По карте "Скала"': PriceScreen(
          serviceName: 'Разовое посещение акваэробики',
          pricePrefix: 'Стоимость по карте "Скала":',
          price: 320,
          pricePostfix: '₽',
        ),
      },
    ),
    'Аренда': NavigationScreen(
      title: _swimmingPoolTitle,
      cardsInfo: <String, Widget>{
        'Аренда 1 дорожки': PriceScreen(
          serviceName: 'Аренда одной дорожки бассейна',
          price: 2500,
          pricePostfix: '₽',
        ),
        'Аренда всего бассейна': PriceScreen(
          serviceName: 'Аренда бассейна целиком',
          price: 6500,
          pricePostfix: '₽',
        ),
      },
    ),
  };

  static Map<String, Widget> _bathComplexRoutes = <String, Widget>{
    'Малая сауна(до 8 чел.)': PriceScreen(
      serviceName: 'Посещение большой сауны (до 8 чел.)',
      additionalInfo:
      'Доп.информация:\nМинимальное время бронирования сауны: 2ч.',
      price: 800,
      pricePostfix: '₽/ч.',
    ),
    'Большая сауна(до 15 чел.)': PriceScreen(
      serviceName: 'Посещение большой сауны (до 15 чел.)',
      additionalInfo:
      'Доп.информация:\nМинимальное время бронирования сауны: 2ч.',
      price: 1000,
      pricePostfix: '₽/ч.',
    ),
  };

  static Map<String, Widget> _personalDiscountRoutes = {
    'Карта клиента': NavigationScreen(
      title: _personalDiscount,
      cardsInfo: <String, Widget>{
        '5% скидка': PriceScreen(
          serviceName: 'Накопительная 5% скидка на основные услуги*',
          additionalInfo:
          '*Скидка предоставляется на основные виды услуг, оказываемые центром после накопления на карте определенной суммы\n\nНа персональные занятия, коммерческие группы, абонементы, предоставляемые услуги по акциям, специальным и льготным ценам, а также на все услуги в будние дни до 16:00 накопительные скидки не распространяются. Скидки не суммируются, при наличии нескольких оснований для скидок действует правило большей скидки. Для всех категорий клиентов, пользующихся платными услугами, утвержденные расценки едины.',
          pricePrefix: 'Скидка при накоплении на карте суммы от',
          price: 6000,
          pricePostfix: '₽',
        ),
        '7% скидка': PriceScreen(
          serviceName: 'Накопительная 7% скидка на основные услуги*',
          additionalInfo:
          '*Скидка предоставляется на основные виды услуг, оказываемые центром после накопления на карте определенной суммы\n\nНа персональные занятия, коммерческие группы, абонементы, предоставляемые услуги по акциям, специальным и льготным ценам, а также на все услуги в будние дни до 16:00 накопительные скидки не распространяются. Скидки не суммируются, при наличии нескольких оснований для скидок действует правило большей скидки. Для всех категорий клиентов, пользующихся платными услугами, утвержденные расценки едины.',
          pricePrefix: 'Скидка при накоплении на карте суммы от',
          price: 18000,
          pricePostfix: '₽',
        ),
        '10% скидка': PriceScreen(
          serviceName: 'Накопительная 10% скидка на основные услуги*',
          additionalInfo:
          '*Скидка предоставляется на основные виды услуг, оказываемые центром после накопления на карте определенной суммы\n\nНа персональные занятия, коммерческие группы, абонементы, предоставляемые услуги по акциям, специальным и льготным ценам, а также на все услуги в будние дни до 16:00 накопительные скидки не распространяются. Скидки не суммируются, при наличии нескольких оснований для скидок действует правило большей скидки. Для всех категорий клиентов, пользующихся платными услугами, утвержденные расценки едины.',
          pricePrefix: 'Скидка при накоплении на карте суммы от',
          price: 54000,
          pricePostfix: '₽',
        ),
      },
    ),
    'Детская карта': NavigationScreen(
      title: _personalDiscount,
      cardsInfo: <String, Widget>{
        '5% скидка': PriceScreen(
          serviceName: 'Накопительная 5% скидка на основные услуги*',
          additionalInfo:
          '*Скидка предоставляется на основные виды услуг, оказываемые центром после накопления на карте определенной суммы\n\nНа персональные занятия, коммерческие группы, абонементы, предоставляемые услуги по акциям, специальным и льготным ценам, а также на все услуги в будние дни до 16:00 накопительные скидки не распространяются. Скидки не суммируются, при наличии нескольких оснований для скидок действует правило большей скидки. Для всех категорий клиентов, пользующихся платными услугами, утвержденные расценки едины.',
          pricePrefix: 'Скидка при накоплении на карте суммы от',
          price: 4000,
          pricePostfix: '₽',
        ),
        '7% скидка': PriceScreen(
          serviceName: 'Накопительная 7% скидка на основные услуги*',
          additionalInfo:
          '*Скидка предоставляется на основные виды услуг, оказываемые центром после накопления на карте определенной суммы\n\nНа персональные занятия, коммерческие группы, абонементы, предоставляемые услуги по акциям, специальным и льготным ценам, а также на все услуги в будние дни до 16:00 накопительные скидки не распространяются. Скидки не суммируются, при наличии нескольких оснований для скидок действует правило большей скидки. Для всех категорий клиентов, пользующихся платными услугами, утвержденные расценки едины.',
          pricePrefix: 'Скидка при накоплении на карте суммы от',
          price: 12000,
          pricePostfix: '₽',
        ),
        '10% скидка': PriceScreen(
          serviceName: 'Накопительная 10% скидка на основные услуги*',
          additionalInfo:
          '*Скидка предоставляется на основные виды услуг, оказываемые центром после накопления на карте определенной суммы\n\nНа персональные занятия, коммерческие группы, абонементы, предоставляемые услуги по акциям, специальным и льготным ценам, а также на все услуги в будние дни до 16:00 накопительные скидки не распространяются. Скидки не суммируются, при наличии нескольких оснований для скидок действует правило большей скидки. Для всех категорий клиентов, пользующихся платными услугами, утвержденные расценки едины.',
          pricePrefix: 'Скидка при накоплении на карте суммы от',
          price: 36000,
          pricePostfix: '₽',
        ),
      },
    ),
    'Корпорация': NavigationScreen(
      title: _personalDiscount,
      cardsInfo: <String, Widget>{
        '5% скидка': PriceScreen(
          serviceName: 'Накопительная 5% скидка на основные услуги*',
          additionalInfo:
          '*Скидка предоставляется на основные виды услуг, оказываемые центром после накопления на карте определенной суммы\n\nНа персональные занятия, коммерческие группы, абонементы, предоставляемые услуги по акциям, специальным и льготным ценам, а также на все услуги в будние дни до 16:00 накопительные скидки не распространяются. Скидки не суммируются, при наличии нескольких оснований для скидок действует правило большей скидки. Для всех категорий клиентов, пользующихся платными услугами, утвержденные расценки едины.',
          pricePrefix: 'Скидка при накоплении на карте суммы от',
          price: 20000,
          pricePostfix: '₽',
        ),
        '7% скидка': PriceScreen(
          serviceName: 'Накопительная 7% скидка на основные услуги*',
          additionalInfo:
          '*Скидка предоставляется на основные виды услуг, оказываемые центром после накопления на карте определенной суммы\n\nНа персональные занятия, коммерческие группы, абонементы, предоставляемые услуги по акциям, специальным и льготным ценам, а также на все услуги в будние дни до 16:00 накопительные скидки не распространяются. Скидки не суммируются, при наличии нескольких оснований для скидок действует правило большей скидки. Для всех категорий клиентов, пользующихся платными услугами, утвержденные расценки едины.',
          pricePrefix: 'Скидка при накоплении на карте суммы от',
          price: 60000,
          pricePostfix: '₽',
        ),
        '10% скидка': PriceScreen(
          serviceName: 'Накопительная 10% скидка на основные услуги*',
          additionalInfo:
          '*Скидка предоставляется на основные виды услуг, оказываемые центром после накопления на карте определенной суммы\n\nНа персональные занятия, коммерческие группы, абонементы, предоставляемые услуги по акциям, специальным и льготным ценам, а также на все услуги в будние дни до 16:00 накопительные скидки не распространяются. Скидки не суммируются, при наличии нескольких оснований для скидок действует правило большей скидки. Для всех категорий клиентов, пользующихся платными услугами, утвержденные расценки едины.',
          pricePrefix: 'Скидка при накоплении на карте суммы от',
          price: 180000,
          pricePostfix: '₽',
        ),
      },
    ),
  };
}
