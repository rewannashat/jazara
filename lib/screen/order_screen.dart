import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:jazara/utilites/const.dart';
import 'package:sizer/sizer.dart';

import 'cart_screen.dart';
import 'home_screen.dart';
class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30,),
                child: Text('تتبع الطلبية',style: TextStyle(
                  color: circle,
                  fontSize: 17.0.sp,fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                ),),
              ),
              IconButton(icon: Icon(Icons.arrow_forward_ios_rounded , color: Colors.black,), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              })
            ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(children: [
              Text('تاريخ الطلبية',style: TextStyle(color: circle,fontFamily: 'Cairo'),),
              Row(
                children: [
                  Text(DateTime.now().day.toString()+'/',style: TextStyle(fontFamily: 'Cairo')),
                  Text(DateTime.now().month.toString(),style: TextStyle(fontFamily: 'Cairo')),
                ],
              ),
            ],),
            Column(children: [
              Text('رقم الطلبية',style: TextStyle(color: circle,fontFamily: 'Cairo'),),
              Text('#123454',style: TextStyle(fontFamily: 'Cairo')),

            ],),
            Column(children: [
              Text('المبلغ الاجمالي',style: TextStyle(color: circle,fontFamily: 'Cairo'),),
              Text('\$75',style: TextStyle(fontFamily: 'Cairo')),

            ],),
          ],),
        ),
        SizedBox(height: 5,),
        Divider(color: coolrr,),
        Row(children: [
          Column(children: [
            Text('ث',style: TextStyle(fontFamily: 'Cairo')),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 10.0.w,height: 4.0.h,
              decoration: BoxDecoration(
                border: Border.all(color: circle),
              ),
              child: Center(child: Text(DateTime.now().second.toString(),style: TextStyle(fontFamily: 'Cairo'))),
            )
          ],),
          Column(children: [
            Text('د',style: TextStyle(fontFamily: 'Cairo')),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 10.0.w,height: 4.0.h,
              decoration: BoxDecoration(
                border: Border.all(color: circle),
              ),
              child: Center(child: Text(DateTime.now().minute.toString(),style: TextStyle(fontFamily: 'Cairo'))),
            )
          ],),
          Column(children: [
            Text('س',style: TextStyle(fontFamily: 'Cairo')),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 10.0.w,height: 4.0.h,
              decoration: BoxDecoration(
                border: Border.all(color: circle),
              ),
              child: Center(child: Text(DateTime.now().hour.toString(),style: TextStyle(fontFamily: 'Cairo'))),
            )
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 20),
            child: Text('الوقت المقدر للاستلام',style: TextStyle(color: circle,fontSize: 16.0.sp,fontFamily: 'Cairo'),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 5),
            child: Icon(Icons.timer,color: Colors.grey,),
          ),
        ],),
        SizedBox(height: 20,),
        Divider(color: coolrr,),
        Expanded(
          child: Theme(
              data: ThemeData(
                primaryColor: coolrr
              ),
            child: Stepper(
              //physics: ClampingScrollPhysics(),
              steps: _stepper(),
              type: stepperType,
              currentStep: this._currentStep,
              onStepTapped: (step) {
                setState(() {
                  this._currentStep = step;
                });
              },
              onStepContinue: () {
                setState(() {
                  if (this._currentStep < this._stepper().length - 1) {
                    this._currentStep = this._currentStep + 1;
                  } else {
                    //Logic
                    print('complete');
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (this._currentStep > 0) {
                    this._currentStep = this._currentStep - 1;
                  } else {
                    this._currentStep = 0;
                  }
                });
              },
            ),
          ),
        ),
        Container(
          height: 7.0.h,
          width: 65.0.w,
          margin: EdgeInsets.only(bottom: 60),
          child: RaisedButton(
            onPressed: () async {
              _showInputFlash();
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color:Color(0xffD05E27),
            child: Center(
              child: Text('تواصل مع المسؤول',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0.sp,fontFamily: 'Cairo'
                ),
              ),
            ),
          ),
        ),

      ],),
    );
  }
  List<Step> _stepper() {
    List<Step> _steps = [
      Step(
          title: Text('تم الطلب'),
          content: Container(),
          isActive: _currentStep >= 0,

          state: StepState.complete),
      Step(
          title: Text('قيد التحضير'),
          content: Container(),
          isActive: _currentStep >= 1,
          state: StepState.complete),
      Step(
          title: Text('تم الارسال'),
          content: Container(),
          isActive: _currentStep >= 2,
          state: StepState.complete),
      Step(
          title: Text('تم التوصيل'),
          content: Container(),
          isActive: _currentStep >= 3,
          state: StepState.complete),

    ];
    return _steps;
  }
  void _showInputFlash({
    bool persistent = true,
    WillPopCallback onWillPop,
  }) {
    var editingController = TextEditingController();
    showFlash(
      context: context,
      persistent: persistent,
      onWillPop: onWillPop,
      builder: (_, controller) {
        return Flash.bar(
          controller: controller,
          barrierColor: Colors.black54,
          borderWidth: 3,
         // position: FlashPosition.top,
          style: FlashStyle.grounded,
          forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
          child: FlashBar(
            title: Text('مرحبا', style: TextStyle(fontSize: 24.0)),
            message: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text('.بإمكانك كتابة ما تود إرساله للمسؤول هنا'),
                ),
                Form(
                  child: TextFormField(
                    controller: editingController,
                    autofocus: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            leftBarIndicatorColor: coolrr,
            primaryAction: IconButton(
              onPressed: () {
                if (editingController.text.isEmpty) {
                  controller.dismiss();
                } else {
                  var message = editingController.text;
                  _showMessage(message);
                  editingController.text = '';
                }
              },
              icon: Icon(Icons.send, color: coolrr),
            ),
          ),
        );
      },
    );
  }
  void _showMessage(String message) {
    if (!mounted) return;
    showFlash(
        context: context,
        duration: Duration(seconds: 3),
        builder: (_, controller) {
          return Flash(
            controller: controller,
            position: FlashPosition.top,
            style: FlashStyle.grounded,
            child: FlashBar(
              icon: Icon(
                Icons.face,
                size: 36.0,
                color: Colors.black,
              ),
              message: Text(message),
            ),
          );
        });
  }
}






