import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text);
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: Text('BMI Calculator'),
        ),
        backgroundColor: Colors.lightGreen,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: height,
                  decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Enter height',
                border: OutlineInputBorder(),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: weight,
                  decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Enter weight',
                border: OutlineInputBorder(),
              )),
            ),
            TextButton(onPressed: () {calculate();}, child: Text('Calculate')),
            Text(result.toString())
          ],
        ));
  }
}
