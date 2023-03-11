import 'package:flutter/material.dart';

import '../../theme.dart';

class TextFieldNormal extends StatelessWidget {
  final TextInputType _inputType;
  final TextInputAction _inputAction;
  final TextEditingController? _controller;
  final String? _labelText;
  final String? _hintText;
  final String? _errorValidationText;
  final void Function(String?)? onSaved;
  const TextFieldNormal(this._inputType, this._inputAction, this._controller,
      this._labelText, this._hintText, this._errorValidationText, this.onSaved,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: _inputType,
        textInputAction: _inputAction,
        controller: _controller,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 12, vertical: defaultMargin),
          filled: true,
          fillColor: formBackgroundColor,
          labelText: _labelText,
          labelStyle: textRegular14.copyWith(color: greyTextColor),
          floatingLabelStyle: textRegular16,
          hintText: _hintText,
          hintStyle: textRegular14.copyWith(color: greyTextColor),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(6), // border radius
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: blueColor, width: 1),
            borderRadius: BorderRadius.circular(6), // border radius
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: redColor, width: 1),
            borderRadius: BorderRadius.circular(6), // border radius
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: redColor, width: 1),
            borderRadius: BorderRadius.circular(6), // border radius
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return _errorValidationText;
          }
          return null;
        },
        onSaved: onSaved);
  }
}
