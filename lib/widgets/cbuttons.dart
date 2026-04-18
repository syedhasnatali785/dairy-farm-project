import 'package:flutter/material.dart';

class Cbuttons extends StatefulWidget {
  const Cbuttons({super.key, required this.btitle, required this.ontap});
  final String btitle;
  final VoidCallback ontap;

  @override
  State<Cbuttons> createState() => _CbuttonsState();
}

class _CbuttonsState extends State<Cbuttons> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .079,
        child: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: isHovered
                ? Colors.green
                : const Color.fromARGB(255, 39, 215, 130),
          ),
          duration: Duration(milliseconds: 200),
          child: Center(
            child: Text(widget.btitle, style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
