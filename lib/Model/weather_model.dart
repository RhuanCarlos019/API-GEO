class Weather {
  //atributos
  final String name;
  final String description;
  final String main;
  final double temp;
  final double tempMax;
  final double tempMin;

  //construtor
  Weather({required this.name, required this.description, required this.main, required this.temp, required this.tempMax, required this.tempMin});

  //método
  factory Weather.fromJson(Map<String,dynamic> json) {
    return Weather(
      name: json['name'],
      description: json['weather'][0]['description'],
      main: json['weather'][0]['main'],
      temp: json['main']['temp'],
      tempMax: json['main']['temp_max'],
      tempMin: json['main']['temp_min'],
    );
  }
}
