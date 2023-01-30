import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CommonDropDown extends StatelessWidget {
  final String name;
  final List<DropdownMenuItem<dynamic>> items;
  final bool? isDense;
  const CommonDropDown({this.isDense,required this.items,required this.name,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown(name: name, items: items,decoration: InputDecoration(
        filled: true,
        fillColor: Colors.tealAccent.withOpacity(.1),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 5, vertical:-3),
        isDense: isDense,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff068188), width: 1.2)),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff068188)),
            borderRadius: BorderRadius.all(Radius.circular(5)))),);
  }
}
