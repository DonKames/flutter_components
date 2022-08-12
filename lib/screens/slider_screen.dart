import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 300;
  bool _isSliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider(
            activeColor: AppTheme.primary,
            //divisions: 10,
            max: 600,
            min: 50,
            value: _sliderValue,
            onChanged: _isSliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          // Checkbox(
          //   value: _isSliderEnabled,
          //   onChanged: (value) {
          //     _isSliderEnabled = value ?? true;
          //     setState(() {});
          //   },
          // ),
          // Switch(
          //   value: _isSliderEnabled,
          //   onChanged: (value) => setState(
          //     () {
          //       _isSliderEnabled = value;
          //     },
          //   ),
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _isSliderEnabled,
            onChanged: (value) => setState(
              () {
                _isSliderEnabled = value ?? true;
              },
            ),
          ),
          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider Switch'),
            value: _isSliderEnabled,
            onChanged: (value) => setState(
              () {
                _isSliderEnabled = value;
              },
            ),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://pngimg.com/uploads/deadpool/deadpool_PNG95.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
