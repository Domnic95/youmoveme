import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_move_me/UI/components/common_button.dart';
import 'package:you_move_me/UI/components/text_form_field.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';

showReuestDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    elevation: 10,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    enableDrag: false,

    //enableDrag: true,
    // useRootNavigator: true,
    builder: (context) {
      return RequestLeave();
    },
  );
}

class RequestLeave extends StatelessWidget {
  const RequestLeave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        // width: MediaQuery.of(context).size.width * .75,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: .5,
                  offset: Offset(0, -1),
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(.5))
            ]),
        child: Material(
          // color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "Enter your reason for leave",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: CommonTextField(
                  maxlines: 6,
                  hinstyle: TextStyle(fontSize: 14, color: Colors.grey),
                  hint: "Enter Reason",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CommonButton(
                  lable: "Apply",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
