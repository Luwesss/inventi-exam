import 'package:flutter/material.dart';

class SpinBars extends StatefulWidget {
  const SpinBars({
    super.key,
    this.color = Colors.black,
    this.size = 50.0,
    this.duration = const Duration(milliseconds: 1200),
  });

  final Color color;
  final double size;
  final Duration duration;

  @override
  State<SpinBars> createState() => _SpinBarsState();
}

class _SpinBarsState extends State<SpinBars>
    with SingleTickerProviderStateMixin {
  static const int _itemCount = 12;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double barWidth = widget.size * 0.1;
    final double barHeight = widget.size * 0.25;

    return Center(
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: Stack(
          children: List.generate(_itemCount, (i) {
            final angle = 2 * 3.141592653589793 * i / _itemCount;
            final delay = i / _itemCount;

            return Positioned.fill(
              child: Center(
                child: Transform.rotate(
                  angle: angle,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: FadeTransition(
                      opacity: Tween(begin: 0.0, end: 1.0)
                          .chain(
                              CurveTween(curve: Interval(delay, delay + 0.25)))
                          .animate(_controller),
                      child: Container(
                        width: barWidth,
                        height: barHeight,
                        decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(barWidth / 2),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
