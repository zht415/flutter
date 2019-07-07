//步骤

import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {

  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.redAccent,
              ),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (int value){//点击事件
                  setState(() {
                    _currentStep = value;
                  });
                },
                onStepContinue: (){//继续
                  setState(() {
                    _currentStep < 2 ? _currentStep +=1 : _currentStep = 0; 
                  });
                },
                onStepCancel: (){//取消
                  setState(() {
                    _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                  });
                },
                steps: [
                  Step(
                    title: Text('Login'),
                    subtitle: Text('Login first'),
                    content: Text(
                        'Exercitation reprehenderit cupidatat ipsum incididunt labore consectetur.'),
                    isActive: _currentStep == 0, //激活状态
                  ),
                  Step(
                    title: Text('Choose Plan'),
                    subtitle: Text('Choose your plan'),
                    content: Text(
                        'Exercitation reprehenderit cupidatat ipsum incididunt labore consectetur.'),
                    isActive: _currentStep == 1, //激活状态
                  ),
                  Step(
                    title: Text('Confirm payment'),
                    subtitle: Text('Confirm your payment method'),
                    content: Text(
                        'Exercitation reprehenderit cupidatat ipsum incididunt labore consectetur.'),
                    isActive: _currentStep == 2, //激活状态
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
