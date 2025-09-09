import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:weather_app/widgets/home.dart';
import 'package:weather_app/widgets/weather_form.dart';

class WeathersScreen extends ConsumerStatefulWidget {
  const WeathersScreen({super.key});
  @override
  ConsumerState<WeathersScreen> createState() {
    return _WeathersScreenState();
  }
}

class _WeathersScreenState extends ConsumerState<WeathersScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = Home();

    if (_selectedPageIndex == 1) {
      activePage = WeatherForm();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],
      ),
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
          activePage,
        ],
      ),
    );
  }
}
