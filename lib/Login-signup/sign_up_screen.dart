import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:algintern/app_router.dart';
import 'package:algintern/helperComponents/custom_elevated_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(
          left: 5.0.w,
          right: 5.0.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(child: Image.asset('assets/images/6.png')),
            Text(
              'Welcome to Fashion Daily',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30.sp,
                  ),
                ),
                const Spacer(),
                Text(
                  'Help',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 13.sp,
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                CircleAvatar(
                  radius: 3.w,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.question_mark,
                    color: Colors.white,
                    size: 4.w,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            TextFormField(),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Phone Number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Row(
                    children: [
                      CountryCodePicker(
                        onChanged: print,
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'EG',
                        favorite: ['+956', '+966'],
                        // optional. Shows only country name and flag
                        showCountryOnly: false,
                        // optional. Shows only country name and flag when popup is closed.
                        showOnlyCountryWhenClosed: false,
                        // optional. aligns the flag and the Text left
                        alignLeft: false,
                      ),
                      const Text('1228378587',
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ))),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: 'Register',
                    textColor: Colors.white,
                    buttonColor: Color(0xFF1976D2),
                    circular: 5,
                    onPressed: () {},
                    verticalPadding: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Align(
              child: Text(
                'Or',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: 'Sign In With GooGle',
                    borderColor: const Color(0xff263238),
                    textColor: const Color(0xff263238),
                    buttonColor: Colors.transparent,
                    circular: 5,
                    onPressed: () {},
                    verticalPadding: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Align(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Have any account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(
                        onEnter: (value) {},
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.popAndPushNamed(
                              context,
                              login,
                            );
                          },
                        text: 'Sign in here',
                        style: const TextStyle(
                          color: Color(0xff263238),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 3.5.h,
            ),
            Text(
              'By regestering your account , you are agree to our \nTerms and Condtion',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
