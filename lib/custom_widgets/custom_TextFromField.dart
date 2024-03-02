import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_constants.dart';

class CustomInputField extends StatefulWidget {
  final List<TextInputFormatter>? textInputFormatter;
  final TextEditingController? fieldController;
  final TextCapitalization? textCapitalization;
  final String? hint;
  final String? label;
  final TextStyle? customHintStyle;
  final TextInputType? fieldInputType;
  final bool? enabled;
  final bool? enableds;
  final Color? bgColor;
  final double? borderRadius;
  final int? maxLines;
  final int? maxLength;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String?>? onChange;
  final ValueChanged<String?>? onSave;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final bool? obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final String? initialvalue;
  final bool? readOnly;
  final Color? borderColor;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final InputDecoration? decoration;
  final EdgeInsets? Containerpadding;
  const CustomInputField(
      {Key? key,
      this.Containerpadding,
      this.suffix,
      this.textInputFormatter,
      this.textCapitalization,
      this.bgColor,
      this.fieldInputType,
      this.fieldController,
      this.enabled,
      this.enableds,
      this.maxLines,
      this.maxLength,
      this.validator,
      this.onTap,
      this.onSave,
      this.hint,
      this.label ="",
      this.customHintStyle = const TextStyle(
        fontSize: 18,
        color: AppConstants.textLighter,
      ),
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText,
      this.contentPadding,
      this.initialvalue,
      this.onChange,
      this.readOnly,
      this.borderRadius,
      this.borderColor,
      this.textStyle,
      this.decoration,
      this.textAlign})
      : super(key: key);

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(

        inputFormatters: widget.textInputFormatter,
        readOnly: widget.readOnly ?? false,
        textAlign: widget.textAlign ?? TextAlign.start,
        style: widget.textStyle ??
            const TextStyle(
              color: AppConstants.secondaryDark,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
        initialValue: widget.initialvalue,
        controller: widget.fieldController,
        keyboardType: widget.fieldInputType ?? TextInputType.text,
        textInputAction: TextInputAction.next,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        enabled: widget.enabled ?? true,
        maxLines: widget.maxLines ?? 1,
        maxLength: widget.maxLength,
        validator: widget.validator,
        obscureText: widget.obscureText ?? false,
        onTap: widget.onTap,
        onChanged: widget.onChange,
        onSaved: widget.onSave,
        cursorColor: AppConstants.secondaryDark,
        decoration: InputDecoration(
            filled: true,  // Set to true to enable background color
            fillColor: widget.bgColor ?? Colors.transparent,
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: AppConstants.errorNormal)),
          enabled: widget.enableds ?? true,
          suffix: widget.suffix,
            counterText: '',
            errorStyle: const TextStyle(color: AppConstants.errorNormal),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1.5, color: AppConstants.errorNormal)),
            hintText: widget.hint ?? "",
            prefixIcon: widget.prefixIcon,
            label: Text(widget.label.toString()),
            suffixIcon: widget.suffixIcon,
            contentPadding: widget.contentPadding ??
                const EdgeInsets.only(
                    left: 10,
                    top: 17,
                    bottom: 17,
                ),
            isDense: true,
            enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(width: 0.8, color: AppConstants.textNormal)),
            disabledBorder: const OutlineInputBorder(
                borderSide:
                BorderSide(width: 0.8, color: AppConstants.textNormal)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1.5, color: AppConstants.secondaryNormal)),
            prefixIconConstraints:
                const BoxConstraints(minWidth: 30, maxHeight: 100),
            hintStyle: widget.customHintStyle,
            // const TextStyle(
            //   fontSize: 18,
            //   color: AppConstants.textLighter,
            // )
        )
    );
  }
}
