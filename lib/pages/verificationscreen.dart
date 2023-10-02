import 'package:flutter/material.dart';
import 'package:mm/pages/welcome_page.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );
    return Scaffold(
      body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: [
        Colors.deepOrange,
        Colors.orange,
        Colors.orange
        ]
    )
    ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 80,),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Verify your phone number",style: TextStyle(color: Colors.white,fontSize: 30),),
              SizedBox(height: 10,),
              Text("We have sent you a verification code to your number. Please verify your number",style: TextStyle(color: Colors.black,fontSize: 20),)
            ],
          ),
        ),
            SizedBox(height: 40,),
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 300),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60),bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60),),
                  ),

                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [

                            const SizedBox(
                              height: 40,
                            ),
                            Text('Enter the four digit code here',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            const SizedBox(
                              height: 40,
                            ),
                            Pinput(
                              controller: pinController,
                              focusNode: focusNode,
                              androidSmsAutofillMethod:
                              AndroidSmsAutofillMethod.smsUserConsentApi,
                              listenForMultipleSmsOnAndroid: true,
                              defaultPinTheme: defaultPinTheme,
                              separatorBuilder: (index) => const SizedBox(width: 8),
                              validator: (value) {
                                return value == '2222' ? null : 'Pin is incorrect';
                              },
                              // onClipboardFound: (value) {
                              //   debugPrint('onClipboardFound: $value');
                              //   pinController.setText(value);
                              // },
                              hapticFeedbackType: HapticFeedbackType.lightImpact,
                              onCompleted: (pin) {
                                debugPrint('onCompleted: $pin');
                              },
                              onChanged: (value) {
                                debugPrint('onChanged: $value');
                              },
                              cursor: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 9),
                                    width: 22,
                                    height: 1,
                                    color: focusedBorderColor,
                                  ),
                                ],
                              ),
                              focusedPinTheme: defaultPinTheme.copyWith(
                                decoration: defaultPinTheme.decoration!.copyWith(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: focusedBorderColor),
                                ),
                              ),
                              submittedPinTheme: defaultPinTheme.copyWith(
                                decoration: defaultPinTheme.decoration!.copyWith(
                                  color: fillColor,
                                  borderRadius: BorderRadius.circular(19),
                                  border: Border.all(color: focusedBorderColor),
                                ),
                              ),
                              errorPinTheme: defaultPinTheme.copyBorderWith(
                                border: Border.all(color: Colors.redAccent),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                              width: double.infinity,
                              height: 44,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 141, 1, 94),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 151, 151, 151),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(0, 1),
                                    )
                                  ]),
                              child: GestureDetector(
                                onTap: (){
                                  print("...Go to login Screen");
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => WelcomePage(),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 30),
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.deepOrange
                                  ),

                                    child: Center(
                                      child: Text('Verify', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                              ),
                              ),
                          ],
                        ),
                      ),

                    ],
                  ),
                )),
        ]
        )
      )
    );
  }
}