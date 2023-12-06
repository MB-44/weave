import 'package:flutter/material.dart';
import 'package:weave/core/app_export.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget with PreferredSizeWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: widget.width ?? double.maxFinite,
      margin: widget.margin,
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        style: _setFontStyle(),
        obscureText: widget.isObscureText!,
        textInputAction: widget.textInputAction,
        keyboardType: widget.textInputType,
        maxLines: widget.maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: widget.validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: widget.hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: widget.prefix,
      prefixIconConstraints: widget.prefixConstraints,
      suffixIcon: widget.suffix,
      suffixIconConstraints: widget.suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      case TextFormFieldFontStyle.InterMedium14:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
      case TextFormFieldFontStyle.InterMedium14WhiteA700_1:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (widget.shape) {
      case TextFormFieldShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (widget.variant) {
      case TextFormFieldVariant.FillGray90024:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray10001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray100cc:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray5006c:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray5006c,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (widget.variant) {
      case TextFormFieldVariant.FillGray90024:
        return ColorConstant.gray90024;
      case TextFormFieldVariant.FillGray900:
        return ColorConstant.gray900;
      case TextFormFieldVariant.FillGray10001:
        return ColorConstant.gray10001;
      case TextFormFieldVariant.FillGray100cc:
        return ColorConstant.gray100Cc;
      case TextFormFieldVariant.FillGray5006c:
        return ColorConstant.gray5006c;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (widget.variant) {
      case TextFormFieldVariant.OutlineGray5006c:
        return false;
      case TextFormFieldVariant.FillGray90024:
        return true;
      case TextFormFieldVariant.FillGray900:
        return true;
      case TextFormFieldVariant.FillGray10001:
        return true;
      case TextFormFieldVariant.FillGray100cc:
        return true;
      case TextFormFieldVariant.FillGray5006c:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (widget.padding) {
      case TextFormFieldPadding.PaddingT15:
        return getPadding(
          left: 12,
          top: 15,
          right: 12,
          bottom: 15,
        );
      case TextFormFieldPadding.PaddingT15_1:
        return getPadding(
          top: 15,
          bottom: 15,
        );
      case TextFormFieldPadding.PaddingT7:
        return getPadding(
          left: 8,
          top: 8,
          bottom: 8,
        );
      case TextFormFieldPadding.PaddingT31:
        return getPadding(
          left: 16,
          top: 31,
          right: 16,
          bottom: 31,
        );
      case TextFormFieldPadding.PaddingT19:
        return getPadding(
          top: 20,
          bottom: 20,
        );
      case TextFormFieldPadding.PaddingT15_2:
        return getPadding(
          top: 15,
          right: 15,
          bottom: 15,
        );
      default:
        return getPadding(
          left: 15,
          top: 15,
          bottom: 15,
        );
    }
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

enum TextFormFieldShape {
  RoundedBorder8,
  RoundedBorder12,
}

enum TextFormFieldPadding {
  PaddingT14,
  PaddingT15,
  PaddingT15_1,
  PaddingT7,
  PaddingT31,
  PaddingT19,
  PaddingT15_2,
}

enum TextFormFieldVariant {
  None,
  OutlineGray5006c,
  FillGray90024,
  FillGray900,
  FillGray10001,
  FillGray100cc,
  FillGray5006c,
}

enum TextFormFieldFontStyle {
  InterMedium14Gray500,
  InterMedium14,
  InterMedium14WhiteA700_1,
}
