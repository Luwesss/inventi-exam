import 'package:flutter/material.dart';

import 'package:inventi_exam/utils/constants/colors.dart';
import 'package:inventi_exam/utils/constants/sizes.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final Color borderColor;
  final bool isPassword;
  final String label;
  final String hint;

  const CustomTextField({
    super.key,
    required this.controller,
    this.borderColor = InventiExamColors.neutral300,
    this.isPassword = false,
    required this.label,
    required this.hint,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.borderColor,
          width: widget.borderColor == InventiExamColors.brandBase ? 2.0 : 1.0,
        ),
        borderRadius: BorderRadius.circular(InventiExamSizes.cornerRadius),
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPassword ? _obscureText : false,
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hint,
          labelStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: widget.borderColor,
              ),
          hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: InventiExamColors.neutral900,
              ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    size: InventiExamSizes.iconSize,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : widget.controller.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(
                        Icons.clear,
                        size: InventiExamSizes.iconSize,
                      ),
                      onPressed: () {
                        widget.controller.clear();
                        setState(() {});
                      },
                    )
                  : null,
        ),
      ),
    );
  }
}
