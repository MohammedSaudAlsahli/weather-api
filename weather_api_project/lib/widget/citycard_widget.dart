import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_api_project/data/api_model.dart';
import 'package:weather_api_project/screens/weather_screen.dart';

class CityCard extends StatelessWidget {
  const CityCard({
    super.key,
    this.weather,
  });
  final WeatherApiModel? weather;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WeatherScreen(
                weather: weather,
              ),
            ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        height: 200,
        width: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 2.0),
              blurRadius: 20.0,
              spreadRadius: 0.0,
            )
          ],
          color: weather!.current!.isDay == 1
              ? Colors.yellow[100]
              : const Color(0xff2d3340),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '${weather!.location!.name}',
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: weather!.current!.isDay == 1
                            ? Colors.black
                            : Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    '${weather!.current!.tempC}',
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: weather!.current!.isDay == 1
                            ? Colors.black
                            : Colors.white),
                  )
                ],
              ),
              Text(
                "${weather!.location!.localtime}",
                // "${DateTime.parse('${weather!.location!.localtime}').hour}:${DateTime.parse('${weather!.location!.localtime}').minute}",
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: weather!.current!.isDay == 1
                        ? Colors.black
                        : Colors.white),
              ),
              const Spacer(),
              Text(
                "${weather!.current!.condition!.text}",
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: weather!.current!.isDay == 1
                        ? Colors.black
                        : Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
