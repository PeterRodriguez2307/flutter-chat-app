import 'package:chat_tiempo_real/widgets/custom_button.dart';
import 'package:chat_tiempo_real/widgets/custom_input.dart';
import 'package:chat_tiempo_real/widgets/label.dart';
import 'package:chat_tiempo_real/widgets/logo.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Logo(title: 'Registro',),
                _Form(),
            
                Label( label1: '¿Ya tienes cuenta?', label2: 'Ingresa con tu cuenta', ruta: 'login',),
            
                Text('Terminos y condiciones', style: TextStyle(fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
      )
   );
  }
}

class _Form extends StatefulWidget{

  @override
  __FormState createState() => __FormState();
  
}

class __FormState extends State<_Form>{

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext contex) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: nameController,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailController,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passwordController,
            isPassword: true,
          ),

          BlueButton(text: 'Registrar', 
          onPressed: (){
            print(emailController.text);
          },)
          
        ],
      ),
    );
  }
}


