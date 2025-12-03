import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class PlayMusicView extends StatelessWidget {
  const PlayMusicView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wave(size: Size(MediaQuery.of(context).size.width, 100)),
    );
  }
}

class Wave extends StatefulWidget {
  final Size size;

  const Wave({super.key, required this.size});

  @override
  State<Wave> createState() => _WaveState();
}

class _WaveState extends State<Wave> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late List<Offset> _points;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
      upperBound: 2*pi
    );
    _controller.repeat();
    _initPoints();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return ClipPath(
              clipper: WaveClipper(value: _controller.value, wavePoints: _points),
              child: BlueGradient(),
            );
          },
        ),
      ),
    );
  }

  void _initPoints() {
    _points = [];
    final r = Random();
    for (int i = 0; i < widget.size.width; i++) {
      double x = i.toDouble();
      double y = r.nextDouble() * widget.size.height;
      _points.add(Offset(x, y));
    }
  }
}

class WaveClipper extends CustomClipper<Path> {
  final double value;
  final List<Offset> wavePoints;

  WaveClipper({required this.value, required this.wavePoints});

  @override
  Path getClip(Size size) {
    var path = Path();
    _modulateRandom(size);
    path.addPolygon(wavePoints, false);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  /// Modifies each point randomly by a maximum of +/- [maxDiff] pixels
  void _modulateRandom(Size size) {
    print('amr _modulateRandom');
    // The maximum number of pixels that points on a random wave can change by.
    final maxDiff = 3.0;
    Random r = Random();
    for (int i = 0; i < size.width; i++) {
      var point = wavePoints[i];

      // Generate a random number between  -maxDiff and +maxDiff
      double diff = maxDiff - r.nextDouble() * maxDiff * 2.0;

      // Ensure that point is constrained between 0 and the size of the container
      double newY = max(0.0, point.dy + diff);
      newY = min(size.height, newY);

      Offset newPoint = Offset(point.dx, newY);
      wavePoints[i] = newPoint;
    }
  }

  //ignore: unused_element
  void _makeSineWave(Size size) {
    final amplitude = size.height / 3;
    final yOffset = amplitude;

    for (int x = 0; x < size.width; x++) {
      double y = amplitude * sin(x / 4) + yOffset;

      Offset newPoint = Offset(x.toDouble(), y);
      wavePoints[x] = newPoint;
    }
  }

  //ignore: unused_element
  Path _bezierWave(Size size) {
    /*
    Adapted from
    https://github.com/felixblaschke/simple_animations_example_app/blob/master/lib/examples/fancy_background.dart
    */

    final v = value * pi * 2;
    final path = Path();

    final y1 = sin(v);
    final y2 = sin(v + pi / 2);
    final y3 = sin(v + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(size.width / 5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class BlueGradient extends StatelessWidget {
  final overlayHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: overlayHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            Colors.blue,
            Colors.blue.withOpacity(0.25),
          ],
        ),
      ),
    );
  }
}
