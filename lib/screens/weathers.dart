import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:weather_app/widgets/weather_form.dart';

class WeathersScreen extends ConsumerStatefulWidget {
  const WeathersScreen({super.key});
  @override
  ConsumerState<WeathersScreen> createState() {
    return _WeathersScreenState();
  }
}

class _WeathersScreenState extends ConsumerState<WeathersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FadeInImage(
            repeat: ImageRepeat.noRepeat,
            placeholder: MemoryImage(kTransparentImage),
            image: AssetImage("assets/images/sunny.jpg"),
            fit: BoxFit.cover,
            fadeInCurve: Curves.bounceInOut,
            height: double.infinity,
            width: double.infinity,
          ),
          WeatherForm(),
        ],
      ),
    );
  }
}
