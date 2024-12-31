import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Widget DashedImageInputWidget({required String title, required TextEditingController imageController, required Future<void> Function() onTap}) {
  File? selectedImage;

   Future<void> pickImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage = File(pickedFile.path);

       imageController.text = pickedFile.path;

       (context as Element).markNeedsBuild();
    }
  }

  return Builder(
    builder: (context) => GestureDetector(
      onTap: () => pickImage(context),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        dashPattern: [8, 4],
        color: Colors.grey,
        strokeWidth: 2,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: selectedImage != null
                ? ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(
                selectedImage!,
                fit: BoxFit.cover,
              ),
            )
                : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.image, size: 50, color: Colors.grey),
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
