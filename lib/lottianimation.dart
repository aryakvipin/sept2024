import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home:Lottianimation() ,));
}
class Lottianimation extends StatefulWidget {
  const Lottianimation({super.key});

  @override
  State<Lottianimation> createState() => _LottianimationState();
}

class _LottianimationState extends State<Lottianimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Lottie.asset("assets/lotti/anim1.json") ,),
    );
  }
}
