import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatefulWidget {
  final String text;
  final bool disabled;
  final bool outline;
  final void Function()? onTap;
  const LargeButton({
    Key? key,
    this.text = '',
    this.disabled = false,
    this.outline = false,
    this.onTap,
  }) : super(key: key);

  @override
  _LargeButtonState createState() => _LargeButtonState();
}

class _LargeButtonState extends State<LargeButton> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        border: Border.all(color: Colors.red),
        color: Colors.red,
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          width: 327,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              color: Colors.red),
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
