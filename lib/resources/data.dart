import 'package:skala_price_list/resources/data_classes.dart';

class Data {
  static final List<Service> services = [
    // Тренажерный зал
    Service.withoutDescription(
      name: 'Тренажерный зал',
      pathToImg: 'assets/images/gym.jpg',
      typesOfService: [
        TypeOfService(
          name: 'Посещение тренажерного зала',
          prices: [
            Price(
              prefix: 'Стоимость по карте ',
              price: 280,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 370,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Посещение тренажерного зала до 16:00 часов в будни',
          prices: [
            Price(prefix: 'Стоимость по карте', price: 224, postfix: 'руб.'),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 296,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Посещение тренажерного зала для студентов до 16:00 в будни',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 190,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 190,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Персональное занятие',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 840,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость по карте ПРЕМИУМ',
              price: 630,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Персональное занятие (2 человека)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 1260,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Персональное занятие (Абонемент на 5 занятий). Срок действия 1 мес.',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 3700,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость по карте ПРЕМИУМ',
              price: 2500,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Персональное занятие (Абонемент на 10 занятий). Срок действия 2 мес.',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 7400,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость по карте ПРЕМИУМ',
              price: 5000,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Составление программы тренировок',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 530,
              postfix: 'руб.',
            ),
          ],
        ),
      ],
    ),
    // Бассейн
    Service.withoutDescription(
      name: 'Бассейн',
      pathToImg: 'assets/images/swimming_pool.jpg',
      typesOfService: [
        TypeOfService(
          name: 'Свободное плавание (взрослые с 14 лет)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 280,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 370,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Свободное плавание (взрослые с 14 лет) до 16:00 часов в будни',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 224,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 296,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Свободное плавание (дети с 6 до 14 лет). Ребенок до 5 лет бесплатно, при покупке 1 взрослого билета',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 220,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 280,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Свободное плавание (дети до 14 лет) до 16:00 часов в будни',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 176,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 224,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда дорожки',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 2500,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда 2 дорожек',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 5000,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда бассейна',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 6500,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Школа плавания (дети от 6 лет). Абонемент 8 посещ., срок действия - 2 мес.',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 2200,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 350,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Школа плавания (дети 4-5 лет). Абонемент 8 посещ., срок действия - 2 мес.',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 2800,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 420,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Обучение плаванию (взрослые). Абонемент 8 посещ., срок действия - 2 мес.',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 2200,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 350,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Акваэробика',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 320,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 420,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Свободное плавание (для уч.заведений, группа от 10 чел.,) будни до 16:00',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 170,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Урок физкультуры (для учебных заведений, группа от 10 чел.) будни до 16:00',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 200,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Свободное плавание (студенты, пенсионеры, инвалиды, многодетные семьи будни до 16:00, при предоставлении документа)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 160,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Обучение (персональное занятие) 1 чел.(взр.)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 840,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Обучение (персональное занятие) 1 чел.(дети)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 740,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Коммерческая группа от 2-х человек',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 630,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аква Беби от 1 до 5 лет (Занятие 30 минут)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 420,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Последний сеанс 21:00 и 21:45',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 180,
              postfix: 'руб.',
            ),
          ],
        ),
      ],
    ),
    // Гимнастический зал
    Service.withoutDescription(
      name: 'Гимнастический зал',
      pathToImg: 'assets/images/gymnastic_hall.jpg',
      typesOfService: [
        TypeOfService(
          name: 'Аренда зала гимнастики (малый)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 1500,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда зала гимнастики (большой)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 2500,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name: 'Художественная гимнастика (персональное занятие) 1 чел.',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 1050,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name: 'Художественная гимнастика (ком.группа) 2-4 чел.',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 1260,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Художественная гимнастика дети от 3 лет 2 ак.ч. (оплата за месяц)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 2400,
              postfix: 'руб./мес.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 370,
              postfix: 'руб./1 час',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Художественная гимнастика дети от 3 лет 3 ак.ч. (оплата за месяц)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 2800,
              postfix: 'руб./мес.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 370,
              postfix: 'руб./1 час \n500 руб./2 часа',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Художественная гимнастика средняя группа 8 ак.ч.(оплата за месяц)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 3700,
              postfix: 'руб./мес',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 500,
              postfix: 'руб./2 часа',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Художественная гимнастика спортивная группа 15 ак.ч.(оплата за месяц)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 4000,
              postfix: 'руб./мес.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 500,
              postfix: 'руб./2 час\n630 руб./3 часа',
            ),
          ],
        ),
        TypeOfService(
          name:
              'художественная гимнастика спортивная группа 20 ак.ч.(оплата за месяц)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 5000,
              postfix: 'руб./мес.',
            ),
            Price(
              prefix: 'Стоимость разового посещения без карты',
              price: 630,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Работа тренера на выездные соревнования (с одного чел.)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 5000,
              postfix: 'руб./чел.',
            ),
          ],
        ),
      ],
    ),
    // Игровой футбольный зал
    Service.withoutDescription(
      name: 'Игровой и футбольный зал',
      pathToImg: 'assets/images/football_hall.jpg',
      typesOfService: [
        TypeOfService(
          name: 'Аренда игрового или футбольного зала',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 2700,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда игрового или футбольного зала 1,5',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 3950,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда игрового или футбольного зала в будни до 12 час.',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 1800,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Аренда игрового или футбольного зала в будни с 12 до 16, выходные дни',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 2000,
              postfix: 'руб./час',
            ),
            Price(
              prefix: 'Разовое посещение',
              price: 2000,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда игрового или футбольного зала под мероприятия',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 2500,
              postfix: 'руб./час',
            ),
          ],
        ),
      ],
    ),
    // Бадминтон
    Service.withoutDescription(
      name: 'Бадминтон',
      pathToImg: 'assets/images/badminton.jpg',
      typesOfService: [
        TypeOfService(
          name: 'Аренда площадки для бадминтона',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 530,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда площадки для бадминтона в будни до 17:00 часов',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 420,
              postfix: 'руб.',
            ),
          ],
        ),
      ],
    ),
    // Настольный теннис
    Service.withoutDescription(
      name: 'Настольный теннис',
      pathToImg: 'assets/images/table_tennis.jpg',
      typesOfService: [
        TypeOfService(
          name: 'Настольный теннис (1 чел.) после 17:00',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 130,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Настольный теннис (1 чел.). Льготный тариф (до 17:00, выходные)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 80,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name: 'Абонемент на 8 посещений (срок действия 1 месяц)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 840,
              postfix: 'руб.',
            ),
          ],
        ),
      ],
    ),
    // Теннисные корты
    Service.withoutDescription(
      name: 'Теннисные корты',
      pathToImg: 'assets/images/tennis_court.png',
      typesOfService: [
        TypeOfService(
          name: 'Аренда теннисного корта (не более 4-ч человек) час.',
          prices: [
            Price(
              prefix: 'Стоимость до 17:00',
              price: 800,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'Стоимость c 17:00',
              price: 1200,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда теннисного корта (не более 4-ч человек) выходные дни',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 800,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Коммерческая группа дети (2-4 чел.)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 1600,
              postfix: 'руб./час',
            ),
          ],
        ),
        TypeOfService(
          name: 'Коммерческая группа взрослые (2-4 чел.)',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 2000,
              postfix: 'руб./час',
            ),
          ],
        ),
      ],
    ),
    // Большой теннис
    Service.withoutDescription(
      name: 'Большой теннис',
      pathToImg: 'assets/images/big_tennis.jpg',
      typesOfService: [
        TypeOfService(
          name: 'Персональное занятие (взрослые) (1 чел.)/час',
          prices: [
            Price(
              prefix: 'Разово',
              price: 1800,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'По абонементу',
              price: 1600,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Персональное детское занятие (дети) (1 чел.)/час',
          prices: [
            Price(
              prefix: 'Разово',
              price: 1600,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'По абонементу',
              price: 1400,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Группа по обучению (дети)',
          prices: [
            Price(
              prefix: 'Разово',
              price: 470,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'По абонементу',
              price: 3000,
              postfix: 'руб./мес.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Группа взрослых',
          prices: [
            Price(
              prefix: 'Разово',
              price: 500,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Группая дети (спортивная, 4,5 часа в неделю)',
          prices: [
            Price(
              prefix: 'Разово',
              price: 600,
              postfix: 'руб.',
            ),
            Price(
              prefix: 'По абонементу',
              price: 5000,
              postfix: 'руб./мес.',
            ),
          ],
        ),
      ],
    ),
    // Скалодром
    Service(
      name: 'Скалодром',
      pathToImg: 'assets/images/climbing_wall.jpg',
      typesOfService: [
        TypeOfService(
          name: 'Тест карта',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 500,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Семейная группа (от 2-х человек, цена за 1 человека 220 руб.)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 280,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Лазание на скалодроме: Взрослый или ребёнок 12+',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 280,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Семейный №1 (взрослый+ребёнок до 12 лет)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 500,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Семейный №2 (взрослый+2 ребёнка до 12 лет)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 700,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Занятие с инструктором (1 час) от 2-х до 4-ч человек',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 420,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Персональное занятие (1 час) 1 человек',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 840,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Урок для учебных заведений',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 160,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Школа скалолазания (спортивная группа, оплата за месяц 3 ак.ч. в нед.)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 2800,
              postfix: 'руб./мес.\n370р./разово',
            ),
          ],
        ),
        TypeOfService(
          name:
              'Школа скалолазания (спортивная группа, оплата за месяц 6 ак.ч в нед.)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 3200,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда скалодрома (без учета доставки)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 5000,
              postfix: 'руб./час',
            ),
          ],
        ),
      ],
      description: 'работает только по предварительной записи. В будни с 14:00 до 21:00. В выходные с 10:00 до 20:00',
    ),
    // Студия аэробики
    Service.withoutDescription(
      name: 'Студия аэробики',
      pathToImg: 'assets/images/aerobic_studio.jpg',
      typesOfService: [
        TypeOfService(
          name: 'Занятие в группе по расписанию 1ч.',
          prices: [
            Price(prefix: 'Стоимость по карте', price: 280, postfix: 'руб.'),
            Price(
              prefix: 'Стоимость разового посещения',
              price: 370,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Занятие в группе по расписанию 1,5ч.',
          prices: [
            Price(prefix: 'Стоимость по карте', price: 420, postfix: 'руб.'),
            Price(
              prefix: 'Стоимость разового посещения',
              price: 500,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Персональное занятие',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 840,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Коммерческая группа (до 10 человек)',
          prices: [
            Price(
              prefix: 'Стоимость по карте',
              price: 2300,
              postfix: 'руб.',
            ),
          ],
        ),
        TypeOfService(
          name: 'Аренда зала аэробики / скайл студии',
          prices: [
            Price(
              prefix: 'Стоимость',
              price: 1500,
              postfix: 'руб./час',
            ),
          ],
        ),
      ],
    ),
  ];
}
