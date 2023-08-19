import 'package:flutter/material.dart';
import 'package:az_solar/Const/colors.dart';

class TextAll extends StatefulWidget {
  final Icon prefixIcon;
  final IconButton? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;

  TextAll({
    Key? key,
    required this.prefixIcon,
    required this.keyboardType,
    this.suffixIcon,
    this.obscureText = true,
  }) : super(key: key);

  @override
  State<TextAll> createState() => _TextAllState();
}

class _TextAllState extends State<TextAll> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isObscure,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                  color: kthirdeytextcolor,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              )
            : null,
      ),
      keyboardType: widget.keyboardType,
    );
  }
}
