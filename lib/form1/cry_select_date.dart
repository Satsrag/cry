import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

import 'cry_from_field.dart';

class CrySelectDate extends CryFormField {
  CrySelectDate(
    BuildContext context, {
    Key? key,
    String? value,
    String? label,
    ValueChanged? onChange,
    FormFieldSetter? onSaved,
  }) : super(
          key: key,
          label: label,
          builder: (CryFormFieldState state) {
            return TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: value),
              onChanged: (v) {
                if (onChange != null) {
                  onChange(v);
                }
              },
              onTap: () async {
                final DateTime picked = (await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2015, 8),
                  lastDate: DateTime(2101),
                ))!;
                value = formatDate(picked, [yyyy, '-', mm, '-', dd]);
                state.didChange();
              },
              onSaved: (v) {
                if (onSaved != null) {
                  onSaved(v);
                }
              },
            );
          },
        );
}
