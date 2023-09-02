import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_api_project/data/api_model.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({
    super.key,
    this.weather,
  });

  final WeatherApiModel? weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: weather!.current!.isDay == 1
          ? Colors.yellow[100]
          : const Color(0xff2d3340),
      appBar: AppBar(
        foregroundColor:
            weather!.current!.isDay == 1 ? Colors.black : Colors.white,
        title: Text(
          '${weather!.location!.country}',
          style: GoogleFonts.rubik(
              fontWeight: FontWeight.bold,
              color:
                  weather!.current!.isDay == 1 ? Colors.black : Colors.white),
        ),
        backgroundColor: weather!.current!.isDay == 1
            ? Colors.yellow[100]
            : const Color(0xff2d3340),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https:${weather!.current!.condition!.icon}',
              height: 150,
              width: 150,
              fit: BoxFit.fill,
            ),
            Text(
              '${weather!.current!.tempC}',
              style: GoogleFonts.rubik(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: weather!.current!.isDay == 1
                      ? Colors.black
                      : Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${weather!.location!.name}',
              style: GoogleFonts.rubik(
                  color: weather!.current!.isDay == 1
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${weather!.location!.localtime}",
              style: GoogleFonts.rubik(
                  color: weather!.current!.isDay == 1
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "${weather!.current!.condition!.text}",
                  style: GoogleFonts.rubik(
                      color: weather!.current!.isDay == 1
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
