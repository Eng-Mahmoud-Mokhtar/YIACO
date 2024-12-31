import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';

OutlineInputBorder getInputBorder({bool isFocused = false}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(50.0),
    borderSide: BorderSide(
      color: isFocused ? ColorManager.lightGreen : ColorManager.greyText,
      width: 1.0,
    ),
  );
}

bool isHidden = true;

TextFormField formField({
  required TextEditingController controller,
  required String titleField,
  required IconData icon,
  required fieldType enumData,
  required void Function(void Function()) reload,
}) {
  TextInputType keyboardType;
  switch (enumData) {
    case fieldType.password:
      keyboardType = TextInputType.text;
      break;
    case fieldType.phoneNumber:
      keyboardType = TextInputType.phone;

      break;
    case fieldType.cardNumber:
      keyboardType = TextInputType.phone;
      break;
    case fieldType.fullName:
      keyboardType = TextInputType.text;
      break;
    case fieldType.drivingLicense:
      keyboardType = TextInputType.text;
      break;
    case fieldType.carLicense:
      keyboardType = TextInputType.text;
      break;
    case fieldType.area:
      keyboardType = TextInputType.text;
      break;
    case fieldType.confirmPassword:
      keyboardType = TextInputType.text;
      break;
    case fieldType.newPassword:
      keyboardType = TextInputType.text;
      break;
    case fieldType.search:
      keyboardType = TextInputType.text;
      break;
    case fieldType.oldPassword:
      keyboardType = TextInputType.text;
      break;
    default:
      keyboardType = TextInputType.text;
  }

  return TextFormField(
    controller: controller,
    keyboardType: keyboardType,
    obscureText: enumData == fieldType.password ? isHidden : false,
    validator: (value) {
      if (value!.isEmpty) return "This field is required";
      return null;
    },
    style: TextStyle(color: ColorManager.lightGreen), // Set the text color
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      hintText: titleField,
      border: getInputBorder(isFocused: false),
      disabledBorder: getInputBorder(isFocused: false),
      errorBorder: getInputBorder(isFocused: false),
      enabledBorder:
          getInputBorder(isFocused: false), // Initial border is black
      focusedBorder: getInputBorder(
          isFocused: true), // Change border to green when focused
      prefixIcon: Icon(
        icon,
        color: ColorManager.navyBlue,
      ),
      suffixIcon: enumData == fieldType.password ||
              enumData == fieldType.confirmPassword
          ? IconButton(
              onPressed: () {
                reload.call(() {
                  isHidden = !isHidden;
                });
              },
              icon: Icon(
                isHidden ? Icons.visibility : Icons.visibility_off,
                color: ColorManager.navyBlue,
              ),
            )
          : null,
    ),
  );
}

enum fieldType {
  phoneNumber,
  confirmPassword,
  password,
  brandCar,
  carLicense,
  area,
  search,
  cardNumber,
  drivingLicense,
  changePassword,
  newPassword,
  oldPassword,
  fullName,
  type,
}

Container customContainer({
  required String titleField,
  required IconData icon,
  required fieldType enumData,
  required void Function(void Function()) reload,
  required TextEditingController controller,
}) {
  return Container(
    width: double.infinity,
    height: 50,
    margin: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Color.fromRGBO(248, 254, 253, 1),
      borderRadius: BorderRadius.circular(50),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0, 0),
          blurRadius: 1,
          spreadRadius: 0,
        ),
      ],
    ),
    child: formField(
      titleField: titleField,
      icon: icon,
      enumData: enumData,
      reload: reload,
      controller: controller,
    ),
  );
}
