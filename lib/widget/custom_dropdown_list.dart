import 'package:carrot_clone/resource/resource.dart';
import 'package:flutter/material.dart';

class CustomDropDownList extends StatefulWidget {
  const CustomDropDownList({
    Key? key,
    required this.offset,
  }) : super(key: key);

  final Offset offset;

  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();
}

class _CustomDropDownListState extends State<CustomDropDownList> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final _values = ['봉천동', '인헌동', '내 동네 설정하기'];

    return Material(
      color: Colors.black.withOpacity(0.3),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () async {
                await _controller.reverse();
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            left: widget.offset.dx + 20,
            top: widget.offset.dy + 5,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) => Transform.scale(
                alignment: Alignment.topLeft,
                scale: _controller.value,
                child: child,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 6,
                      width: 12,
                      child: CustomPaint(
                        painter: TrianglePainter(
                          strokeColor: AppColor.white,
                          paintingStyle: PaintingStyle.fill,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 144,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColor.white,
                    ),
                    child: ListView.separated(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) => InkWell(
                              onTap: () async {
                                await _controller.reverse();
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                height: 48,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      _values[index],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        itemCount: _values.length,
                        separatorBuilder: (context, index) => Container(color: AppColor.lightGrey, height: 1)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter({
    this.strokeColor = Colors.black,
    this.strokeWidth = 3,
    this.paintingStyle = PaintingStyle.stroke,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x / 2, 0)
      ..lineTo(x, y)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
