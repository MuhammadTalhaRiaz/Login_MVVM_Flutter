import 'package:flutter/material.dart';

class InternetExceptionScreen extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptionScreen({Key? key,required this.onPress}) : super(key: key);

  @override
  State<InternetExceptionScreen> createState() => _InternetExceptionScreenState();
}

class _InternetExceptionScreenState extends State<InternetExceptionScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * 0.15,),
          Icon(Icons.cloud_off, color: Colors.red,size: 80,),
          Padding(
              padding: EdgeInsets.only(top: 30),
            child: Center(child: Text('Inernet Exception')),
          ),

          SizedBox(height: height * 0.15,),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(color: Colors.amber),
              child: Center(
                child: Text('Retry',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
