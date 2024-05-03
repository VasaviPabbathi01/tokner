import 'package:flutter/material.dart';

class TouchEffect extends StatefulWidget {
  final Widget? child;
  final GestureTapCallback? onTap;

  const TouchEffect({Key? key, this.child, this.onTap}) : super(key: key);

  @override
  State<TouchEffect> createState() => _TouchEffectState();
}

class _TouchEffectState extends State<TouchEffect> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: _isPressed ? 0.2 : 1.0,
      child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: widget.onTap,
          onTapDown: (tapDetails) {
            setState(() {
              _isPressed = true;
            });
          },
          onTapCancel: () {
            setState(() {
              _isPressed = false;
            });
          },
          onTapUp: (tapDetails) {
            setState(() {
              _isPressed = false;
            });
          },
          child: widget.child),
    );
  }
}
