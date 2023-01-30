import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CommonDatePicker extends StatelessWidget {
  final String name;
  final bool? isDense;
  final int? maxLength;
  final int? maxLines;

  const CommonDatePicker(
      {this.maxLines,
      this.maxLength,
      this.isDense,
      required this.name,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(
      primaryColor: const Color(0xff068188),
      colorScheme: const ColorScheme.light(primary: Color(0xff068188)),
    ),
      child: FormBuilderDateTimePicker(
        inputType: InputType.date,
        cursorColor: Colors.black54,
        maxLength: maxLength,
        maxLines: maxLines,
        name: name,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.tealAccent.withOpacity(.1),
            suffixIcon: Icon(Icons.date_range_sharp),

            contentPadding:
                const EdgeInsets.symmetric(horizontal: 5, vertical:-3),
            isDense: isDense,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff068188), width: 1.2)),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff068188)),
                borderRadius: BorderRadius.all(Radius.circular(5)))),
      ),
    );
  }
}