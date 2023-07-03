class Weather{
  String? cityName;
  double? temp;
  double? wind;
  int? humid;
  double? feels_like;
  int? pressure;
  String? icon;

  Weather({
    this.cityName,
    this.temp,
    this.wind,
    this.humid,
    this.feels_like,
    this.pressure,
    this.icon
  });

  Weather.fromJson(Map<String, dynamic> json){
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humid = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
    icon = json["weather"][0]["icon"];

  }

}