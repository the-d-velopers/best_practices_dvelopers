import 'package:flutter/material.dart';

class TipWidget extends StatefulWidget {
  final String title; // El título que se muestra al lado del botón
  final Widget content; // El contenido que será mostrado/ocultado

  const TipWidget({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  _TipWidgetState createState() => _TipWidgetState();
}

class _TipWidgetState extends State<TipWidget>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;

  late AnimationController _controller;
  late Animation<double> _animation;

  double collapsedHeight = 50.0;
  double expandedHeight = 200.0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation =
        Tween<double>(begin: collapsedHeight, end: expandedHeight).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                  if (isExpanded) {
                    _controller.forward();
                  } else {
                    _controller.reverse();
                  }
                });
              },
              icon: Icon(isExpanded ? Icons.remove : Icons.add),
            ),
            Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  height: _animation.value,
                  child: const VerticalDivider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                );
              },
            ),
            Expanded(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: _animation.value,
                    child: SingleChildScrollView(
                      child: widget.content,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
