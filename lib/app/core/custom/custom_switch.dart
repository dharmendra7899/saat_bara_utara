import 'package:flutter/material.dart';

import '../../../config/theme/app_palette.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({super.key, required this.value, required this.onChanged});

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
/*  Animation? _circleAnimation;
  AnimationController? _animationController;*/

  @override
  void initState() {
    super.initState();
  /*  _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
        begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
        end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
        parent: _animationController!, curve: Curves.linear));*/
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /*  if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }*/
        widget.value == false
            ? widget.onChanged(true)
            : widget.onChanged(false);
      },
      child: Container(
        width: 55.0,
        height: 30.0,
        decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              color: widget.value
                  ? AppPaletteLight.titleTextColor
                  : Colors.grey.shade300),
          borderRadius: BorderRadius.circular(24.0),
          color:  widget.value?AppPaletteLight.background:Colors.grey.shade100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            alignment: widget.value
                ? ((Directionality.of(context) == TextDirection.rtl)
                ? Alignment.centerRight
                : Alignment.centerLeft)
                : ((Directionality.of(context) == TextDirection.rtl)
                ? Alignment.centerLeft
                : Alignment.centerRight),
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.value
                      ? AppPaletteLight.primary
                      : Colors.greenAccent),
            ),
          ),
        ),
      ),
    );
  }
}