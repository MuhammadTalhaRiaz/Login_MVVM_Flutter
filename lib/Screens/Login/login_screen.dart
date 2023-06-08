import 'package:flutter/material.dart';
import 'package:untitled/ViewModels/controller/login_view_model.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/utils.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final VMLogin = Get.put(LoginViewModel());
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0,24.0,0.0,8.0),
              child:Card(
                elevation: 8,
                // color: Colors.transparent,
                surfaceTintColor:Colors.transparent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                margin: EdgeInsets.only(right: 16.0,left: 16.0,top: 32.0),
                child: Column(
                  children: [
                    Padding(
                        padding:EdgeInsets.only(top: 16.0),
                        child: Text(
                          'Login',style: TextStyle(
                            color:Colors.amber,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
                      child: _buildMobileNo(context),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
                        child: _buildpassword(context)
                    ),
                    // SizedBox(height: 16.0,),

                    Padding(
                        padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
                        child: _buildButtonWidget(context)
                    ),


                  ],
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildButtonWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            width: 3 *  (MediaQuery.of(context).size.width/10),
            height: 1.2 *  (MediaQuery.of(context).size.height/20),
            margin: EdgeInsets.only(bottom: 16.0,right: 16.0,top: 16.0),
            child :ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.amber,
              ),

              child: Text("Login",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white
                ),),
              onPressed: () {
                if(formKey.currentState!.validate()){
                  VMLogin.LoginApi();
                }
                RxStatus.loading();
              },
            )
        ),
      ],
    );
  }
  Widget _buildMobileNo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: TextFormField(
        controller: VMLogin.numberController.value,
        focusNode: VMLogin.numberfocusNode.value,
        enabled: true,
        validator: (value){
          if(value!.isEmpty){
            Utils.snackBar("Number", "Enter Number");
          }
        },
        onFieldSubmitted: (value){
          Utils.fieldFocusChange(context, VMLogin.numberfocusNode.value, VMLogin.passwordfocusNode.value);
        },
        keyboardType:TextInputType.text,
        onChanged: (value) {},
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.black)),
          labelText: "Mobile No/Username",
          labelStyle: TextStyle(
              fontSize: 16
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              const Radius.circular(4.0),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: TextFormField(
        controller: VMLogin.passwordController.value,
        focusNode: VMLogin.passwordfocusNode.value,
        enabled: true,
        obscureText: true,
        keyboardType: TextInputType.text,
        onChanged: (value) {},
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.black)),

          labelText: "Password",
          labelStyle: TextStyle(
              fontSize: 16
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              const Radius.circular(4.0),
            ),
          ),
        ),
      ),
    );
  }
}
