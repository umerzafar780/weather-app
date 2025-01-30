import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weat/load_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Weatherdata data = Weatherdata();

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:
                Colors.blue.shade300,
            title: Text("Weather App",style: TextStyle(color: Colors.white),),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search,color:Colors.white,))],
          ),
          backgroundColor: Color(0xFF5480C1),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Image.asset(
                "images/cloudy.png",
                width: 200,
                height: 150,
              )),
              // BoxedIcon(WeatherIcons.day_cloudy,size: 120,),
              Text(
                data.weatherData[0]["currentWeather"]["temperature"]
                        .toString() +
                    " ℃",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60),
              ),

              SizedBox(
                height: 0,
              ),
              Text(
                data.weatherData[0]["city"],
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildColumn(data, 0, Icons.sunny),
                    // SizedBox(width: 15,),
                    buildColumn(data, 1, Icons.sunny),

                    buildColumn(data, 2, Icons.cloud),

                    buildColumn(data, 3, Icons.cloud),

                    buildColumn(data, 4, Icons.sunny),
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    daily(data, 0, Icons.sunny),
                    daily(data, 1, Icons.cloud),
                    daily(data, 2, Icons.sunny),
                    daily(data, 3, Icons.sunny),
                    daily(data, 4, Icons.cloud),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column daily(Weatherdata data, int val, IconData icon) {
    return Column(
      children: [
        Text(
          data.weatherData[0]["weeklyForecast"][val]["day"],
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Icon(
          icon,
          color: icon == Icons.cloud
              ? Colors.lightBlue
              : (icon == Icons.sunny ? Colors.yellow : Colors.grey),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          data.weatherData[0]["weeklyForecast"][val]["highTemp"].toString() +
              "°/" +
              data.weatherData[0]["weeklyForecast"][val]["lowTemp"].toString() +
              "°",
        ),
      ],
    );
  }

  Column buildColumn(Weatherdata data, int val, IconData icon) {
    return Column(
      children: [
        Text(
          data.weatherData[0]["hourlyForecast"][val]["time"],
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        // Image.network(data.weatherData[0]["hourlyForecast"][val]["icon"],),
        SizedBox(
          height: 10,
        ),
        Icon(
          icon,
          color: icon == Icons.cloud
              ? Colors.lightBlue
              : (icon == Icons.sunny ? Colors.yellow : Colors.grey),
        ),

        SizedBox(
          height: 15,
        ),
        Text(
          data.weatherData[0]["hourlyForecast"][val]["temperature"].toString()+"°C" ,
        )
      ],
    );
  }
}
