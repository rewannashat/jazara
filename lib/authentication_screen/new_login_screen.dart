import 'package:flutter/material.dart';
import 'package:jazara/screen/home_screen.dart';
import 'package:sizer/sizer.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<String> list = [
    'سيدة','مدام','أستاذ'
  ];
  String chosen ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
           Align(
             alignment: Alignment.topRight,
             child: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){
               Navigator.pop(context);
             }),
           ),
            Text('أدخل بيانات التسجيل الخاصة بك' , style: TextStyle(
              color: Color(0xff2F6964),
              fontSize: 15.0.sp ,
              fontWeight: FontWeight.bold,  fontFamily: 'Cairo'

            ),),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  column('الاسم الأخير'),
                  SizedBox(width: 10,),
                  column('الاسم الأول'),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 7.0.h,
              width: 42.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xff707070),
                )
              ),
              child: Center(
                child: DropdownButtonHideUnderline(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: DropdownButton(
                          hint: Text('فيم تحب أن نناديك؟',style: TextStyle(  fontFamily: 'Cairo'),),
                          dropdownColor: Colors.white,
                          items: list.map((item) {
                            return DropdownMenuItem(
                                value: item, child: Text(item));
                          }).toList(),
                          isExpanded: true,
                          value: chosen,
                          onChanged: (value) {
                            setState(() {
                              chosen = value;
                            });
                          }),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  column('اسم الحي'),
                  SizedBox(width: 10,),
                  column('المدينة'),

                ],
              ),
            ),
            Column(
              children: [
                Text('البريد الالكتروني',style: TextStyle(
                  color: Color(0xff707070),  fontFamily: 'Cairo'
                ),),
                Container(
                  height: 10.0.h,
                  width: 42.0.h,
                  child: Center(
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        filled: true,
                        alignLabelWithHint: true,
                        hintText: 'البريد الالكتروني',
                        hintStyle: TextStyle(
                            fontFamily: 'Cairo'
                        ),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: new BorderSide(color:  Color(0xff707070)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: new BorderSide(color:Color(0xff707070)),
                        ),),
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Color(0xffAFAFAF),
                      textDirection:TextDirection.ltr,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 6.0.h,
              width: 60.0.w,
              margin: EdgeInsets.only(top: 10,right: 10,left: 5),
              child: RaisedButton(
                onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color:Color(0xffD05E27),
                child: Center(
                  child: Text('حفظ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0.sp,  fontFamily: 'Cairo'
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('سياسات الخصوصية والتراخيص   ' , style: TextStyle(
                    color: Color(0xffD05E27),
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.bold,  fontFamily: 'Cairo'
                  ),),
                  Text('\tأنت توافق على ',style: TextStyle(
                    color: Color(0xff707070),  fontFamily: 'Cairo'
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
Widget column(String name){
  return Column(
    children: [
      Text(name,style: TextStyle(
        color: Color(0xff707070),  fontFamily: 'Cairo'
      ),),
      Container(
        height: 10.0.h,
        width: 20.0.h,
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              alignLabelWithHint: true,
              fillColor: Colors.white,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color:  Color(0xff707070)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color:Color(0xff707070)),
              ),),
            keyboardType: TextInputType.text,
            cursorColor: Color(0xffAFAFAF),
            textDirection:TextDirection.rtl,
          ),
        ),
      ),
    ],
  );
}