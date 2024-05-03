import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/color_theme.dart';

class TextFieldOutlined extends StatelessWidget {
  const TextFieldOutlined(
      {Key? key,
        required this.labelText,
        this.obscureText = false,
        this.controller,
        this.keyboardType = TextInputType.text,
        this.hasText = false,
        this.hasError,
        this.errorText,
        required this.onChanged,
        this.onSubmitted,
        this.suffixIcon,
        this.readOnly = false,
        this.focusNode,
        this.focusChildNode,
        this.hintText,
        this.fillColor,
        this.filled})
      : super(key: key);

  final String labelText;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool hasText, readOnly;
  final bool? hasError, filled;
  final String? errorText, hintText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final FocusNode? focusChildNode;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    final error = hasError ?? errorText?.isNotEmpty ?? false;
    return Focus(
      focusNode: focusNode,
      child: Builder(builder: (BuildContext context) {
        final FocusNode focusNode = Focus.of(context);
        final bool hasFocus = focusNode.hasFocus;
        return TextField(
          focusNode: focusChildNode,
          textCapitalization: keyboardType == TextInputType.name
              ? TextCapitalization.words
              : TextCapitalization.none,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          enableSuggestions: false,
          autocorrect: false,
          readOnly: readOnly,
          cursorColor: ThemeColorName.cursor,
          inputFormatters: [
            LengthLimitingTextInputFormatter(100),
          ],
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: ThemeColorName.textFieldText),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            labelText: labelText,
            hintText: hintText,
            filled: filled,
            fillColor: fillColor,
            floatingLabelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: !error || (hasFocus && error)
                    ? ThemeColorName.textFieldText
                    : ThemeColorName.errorText),
            hintStyle: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: ThemeColorName.textFieldHint),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            // hasFocus
            //     ? FloatingLabelBehavior.auto
            //     : FloatingLabelBehavior.never,
            labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: !error
                    ? hasText || hasFocus
                    ? ThemeColorName.textFieldText
                    : ThemeColorName.textFieldNoFocus
                    : ThemeColorName.errorText),
            errorText: !hasFocus ? errorText : null,
            errorStyle: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: ThemeColorName.errorText),
            suffixIcon: suffixIcon,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ThemeColorName.errorText),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ThemeColorName.textFieldEnable),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ThemeColorName.textFieldFocus),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ThemeColorName.errorText),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ThemeColorName.textFieldDisable,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
          onChanged: onChanged,
          onSubmitted: onSubmitted,
        );
      }),
    );
  }
}
