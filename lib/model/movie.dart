class Movie {
  int id;
  String title;
  String description;
  String imageUrl;
  String year;

  Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.year,
  });
}

List<Movie> generateMovies() {
  return [
    Movie(
      id: 1,
      title: "Интерстеллар",
      description:
          "Группа астронавтов путешествует через червоточину в поисках нового дома для человечества.",
      imageUrl: "assets/flutter_app.png",
      year: "2014",
    ),
    Movie(
      id: 2,
      title: "Унесенные призраками",
      description:
          "Девочка попадает в мир духов и должна работать в бане, чтобы освободить своих родителей.",
      imageUrl: "assets/flutter_app.png",
      year: "2001",
    ),
    Movie(
      id: 3,
      title: "Матрица",
      description:
          "Хакер узнает, что мир, в котором он живет, на самом деле является компьютерной симуляцией.",
      imageUrl: "assets/flutter_app.png",
      year: "1999",
    ),
    Movie(
      id: 4,
      title: "Паразиты",
      description:
          "Члены бедной семьи строят планы, чтобы стать employed by a wealthy family.",
      imageUrl: "assets/flutter_app.png",
      year: "2019",
    ),
    Movie(
      id: 5,
      title: "Начало",
      description:
          "Профессиональный вор, который крадет корпоративные секреты с помощью технологии совместного использования снов, получает обратную задачу - внедрить идею в сознание генерального директора.",
      imageUrl: "assets/flutter_app.png",
      year: "2010",
    ),
    Movie(
      id: 6,
      title: "Большой Лебовски",
      description:
          "Расслабленный боулер ошибочно принимается за миллионера и оказывается втянутым в эксцентричный преступный мир.",
      imageUrl: "assets/flutter_app.png",
      year: "1998",
    ),
    Movie(
      id: 7,
      title: "Амели",
      description:
          "Застенчивая официантка в Париже решает анонимно улучшить жизнь окружающих.",
      imageUrl: "assets/flutter_app.png",
      year: "2001",
    ),
    Movie(
      id: 8,
      title: "Бегущий по лезвию бритвы 2049",
      description:
          "Бегущий по лезвию бритвы, охотник за репликантами в Лос-Анджелесском полицейском департаменте, раскрывает давнюю тайну, которая может повергнуть общество в хаос.",
      imageUrl: "assets/flutter_app.png",
      year: "2017",
    ),
    Movie(
      id: 9,
      title: "Отель «Гранд Будапешт»",
      description:
          "Консьерж исторического европейского отеля и его верный юный сотрудник предоставляют первоклассное обслуживание ряду колоритных гостей во время бурных событий первой половины 20 века.",
      imageUrl: "assets/flutter_app.png",
      year: "2014",
    ),
    Movie(
      id: 10,
      title: "Принцесса-невеста",
      description:
          "Вестли должен спасти свою принцессу Баттеркап от злого принца Хампердинка.",
      imageUrl: "assets/flutter_app.png",
      year: "1987",
    ),
  ];
}
