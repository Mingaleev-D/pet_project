class Movie {
  String title;
  String description;
  String imageUrl;
  String year;

  Movie({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.year,
  });
}

List<Movie> generateMovies() {
  return [
    Movie(
      title: "Интерстеллар",
      description:
          "Группа астронавтов путешествует через червоточину в поисках нового дома для человечества.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "2014",
    ),
    Movie(
      title: "Унесенные призраками",
      description:
          "Девочка попадает в мир духов и должна работать в бане, чтобы освободить своих родителей.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "2001",
    ),
    Movie(
      title: "Матрица",
      description:
          "Хакер узнает, что мир, в котором он живет, на самом деле является компьютерной симуляцией.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "1999",
    ),
    Movie(
      title: "Паразиты",
      description:
          "Члены бедной семьи строят планы, чтобы стать employed by a wealthy family.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "2019",
    ),
    Movie(
      title: "Начало",
      description:
          "Профессиональный вор, который крадет корпоративные секреты с помощью технологии совместного использования снов, получает обратную задачу - внедрить идею в сознание генерального директора.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "2010",
    ),
    Movie(
      title: "Большой Лебовски",
      description:
          "Расслабленный боулер ошибочно принимается за миллионера и оказывается втянутым в эксцентричный преступный мир.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "1998",
    ),
    Movie(
      title: "Амели",
      description:
          "Застенчивая официантка в Париже решает анонимно улучшить жизнь окружающих.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "2001",
    ),
    Movie(
      title: "Бегущий по лезвию бритвы 2049",
      description:
          "Бегущий по лезвию бритвы, охотник за репликантами в Лос-Анджелесском полицейском департаменте, раскрывает давнюю тайну, которая может повергнуть общество в хаос.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "2017",
    ),
    Movie(
      title: "Отель «Гранд Будапешт»",
      description:
          "Консьерж исторического европейского отеля и его верный юный сотрудник предоставляют первоклассное обслуживание ряду колоритных гостей во время бурных событий первой половины 20 века.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "2014",
    ),
    Movie(
      title: "Принцесса-невеста",
      description:
          "Вестли должен спасти свою принцессу Баттеркап от злого принца Хампердинка.",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpW3lF-yJw-QcgiJhNhYrEOfnYpGPTM5c8iQ",
      year: "1987",
    ),
  ];
}
