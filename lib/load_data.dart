import 'package:flutter/material.dart';


class Weatherdata{

  List<Map<String, dynamic>> weatherData = [

    {
      "city": "New York",
      "currentWeather": {
        "temperature": 22,
        "condition": "Sunny",
        "icon": "sunny"
      },
      "hourlyForecast": [
        {
          "time": "10:00 AM",
          "temperature": 22,
          "icon": "sunny"
        },
        {
          "time": "11:00 AM",
          "temperature": 23,
          "icon": "sunny"
        },
        {
          "time": "12:00 PM",
          "temperature": 25,
          "icon": "sunny"
        },
        {
          "time": "1:00 PM",
          "temperature": 26,
          "icon": "partly_cloudy"
        },
        {
          "time": "2:00 PM",
          "temperature": 27,
          "icon": "partly_cloudy"
        },
        {
          "time": "3:00 PM",
          "temperature": 28,
          "icon": "cloudy"
        }
      ],
      "weeklyForecast": [
        {
          "day": "Monday",
          "highTemp": 30,
          "lowTemp": 20,
          "icon": "sunny"
        },
        {
          "day": "Tuesday",
          "highTemp": 28,
          "lowTemp": 18,
          "icon": "cloudy"
        },
        {
          "day": "Wednesday",
          "highTemp": 26,
          "lowTemp": 19,
          "icon": "partly_cloudy"
        },
        {
          "day": "Thursday",
          "highTemp": 27,
          "lowTemp": 18,
          "icon": "rainy"
        },
        {
          "day": "Friday",
          "highTemp": 29,
          "lowTemp": 21,
          "icon": "sunny"
        },
        {
          "day": "Saturday",
          "highTemp": 30,
          "lowTemp": 22,
          "icon": "sunny"
        },
        {
          "day": "Sunday",
          "highTemp": 28,
          "lowTemp": 20,
          "icon": "cloudy"
        }
      ]
    }

  ];



}

