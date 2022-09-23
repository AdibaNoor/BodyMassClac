import 'package:body_mass_calc/Widgets/left_bar.dart';
import 'package:body_mass_calc/Widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult =0;
  String _textResult ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB7C2F1),
      appBar: AppBar(
        title: Text('Body Mass Calculator',
          style: TextStyle(color: Color(0xFFFFFFFF),
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFA0AFF1),
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //height
                  Container(
                    width: 150,
                    child: TextField(
                      controller: _heightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Height',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  //mass
                  Container(
                    width: 150,
                    child: TextField(
                      controller: _weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Mass',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            //Calculate button
            GestureDetector(
              onTap: (){
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _w /(_h * _h);
                  if(_bmiResult>25){
                    _textResult = 'You are over-weight!!';
                  }else if(_bmiResult>=18.5 && _bmiResult<=25){
                    _textResult = 'You have a normal weight!!';
                  }else{
                    _textResult = 'You are under weight!!';
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text('Calculate', style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            SizedBox(height: 20,),
            //Output
            Container(
              child: Text(_bmiResult.toStringAsFixed(2),
              style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400,
              ),),
            ),
            SizedBox(height: 20,),
            //textouput
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text(_textResult,
                  style: TextStyle(
                    color: Colors.white, fontSize: 35, fontWeight: FontWeight.w300,
                  ),),
              ),
            ),
            SizedBox(height: 20,),
            LeftBar( barwidth: 60,),
            SizedBox(height: 10,),
            LeftBar( barwidth: 100,),
            SizedBox(height: 10,),
            RightBar(barwidth: 100,),
            SizedBox(height: 10,),
            RightBar(barwidth: 125,),
            SizedBox(height: 10,),
            RightBar(barwidth: 100,),


          ],
        ),
      ),
    );
  }
}
