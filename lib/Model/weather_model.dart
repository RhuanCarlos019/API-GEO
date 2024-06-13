class Weather {
  final String name;
  final String description;
  final String main;
  final double temp;
  final double tempMax;
  final double tempMin;
  final String icon; // Novo atributo para o ícone

  Weather({
    required this.name,
    required this.description,
    required this.main,
    required this.temp,
    required this.tempMax,
    required this.tempMin,
    required this.icon, // Novo argumento para o construtor
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      name: json['name'],
      description: json['weather'][0]['description'],
      main: json['weather'][0]['main'],
      temp: json['main']['temp'],
      tempMax: json['main']['temp_max'],
      tempMin: json['main']['temp_min'],
      icon: json['weather'][0]['icon'], // Ícone adicionado ao parsing
    );
  }

  String getNotificationMessage() {
    if (temp < 10) {
      return "Agasalhe-se, está frio";
    } else if (temp > 30) {
      return "Se hidrate, o calor está insano";
    } else {
      return "A temperatura está agradável";
    }
  }
}
