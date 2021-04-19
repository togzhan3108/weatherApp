import 'package:flutter/material.dart';
import 'days_model.dart';

class HomePage extends StatelessWidget {
  final List<DaysModel> days = [
    DaysModel(day: 'Friday', degree: '6 °F', icon: Icons.wb_sunny),
    DaysModel(day: 'Saturday', degree: '5 °F', icon: Icons.wb_sunny),
    DaysModel(day: 'Sunday', degree: '22 °F', icon: Icons.ac_unit),
    DaysModel(day: 'Monday', degree: '22 °F', icon: Icons.wb_sunny),
    DaysModel(day: 'Tuesday', degree: '5 °F', icon: Icons.ac_unit),
    DaysModel(day: 'Wednesday', degree: '6 °F', icon: Icons.wb_sunny),
    DaysModel(day: 'Thursday', degree: '22 °F', icon: Icons.ac_unit),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Weather Forecast',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFE15241),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.search),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter City Name',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Murmansk Oblast, RU',
                  style: TextStyle(fontSize: 35),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Friday, Mar 20, 2020',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.wb_sunny,
                  size: 80,
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  children: [
                    Text(
                      '14 °F',
                      style: TextStyle(fontSize: 60),
                    ),
                    Text(
                      'LIGHT SNOW',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.ac_unit,
                      size: 30,
                    ),
                    Text(
                      '5',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text('km/hr'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.ac_unit,
                      size: 30,
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text('%'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.ac_unit,
                      size: 30,
                    ),
                    Text(
                      '20',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text('%'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              '7-DAY WEATHER FORECAST',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 140,
            child: ListView.builder(
                physics: ClampingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 24),
                itemCount: days.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return WeekDaysTile(
                    day: days[index].day,
                    degree: days[index].degree,
                    icon: days[index].icon,
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class WeekDaysTile extends StatelessWidget {
  final String day, degree;
  final IconData icon;
  WeekDaysTile(
      {@required this.day, @required this.degree, @required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      child: Stack(
        children: [
          Container(
            color: Colors.white.withOpacity(0.4),
            alignment: Alignment.center,
            height: 200,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  day,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      degree,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      icon,
                      size: 35,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}