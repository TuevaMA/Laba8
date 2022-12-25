import 'package:flutter/material.dart';
import 'login.dart';
import 'album.dart';

void main(){runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
        home: SignScreen());
  }
}

//-------СТРАНИЦА РЕГИСТРАЦИИ-------//
class SignScreen extends StatefulWidget{
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}


class _SignScreenState extends State<SignScreen>{
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  String _name='';
  String _login='';
  String _password='';
  String _passwordTwo='';

  final nameController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordTwoController = TextEditingController();

  @override
  void dispose() {
    final nameController = TextEditingController();
    final loginController = TextEditingController();
    final passwordController = TextEditingController();
    final passwordTwoController = TextEditingController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text('Music Player'),
            backgroundColor: Colors.deepOrange
        ),

        body: Form(
            key: _form,
            child: Column(children: <Widget>[
              const Align(alignment: Alignment.center,
                  child: Padding(padding: EdgeInsets.only(top: 15.0),
                      child: Text('Sign in', style: TextStyle(fontSize: 45.0))
                  )
              ),

              Align(alignment: Alignment.center,
                  child: Padding(padding: const EdgeInsets.only(left: 300.0, right: 300.0, top: 45.0),
                      child: TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Name',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста введите свое имя';
                            }
                            return null;
                          })
                  )
              ),

              Align(alignment: Alignment.center,
                  child: Padding(padding: const EdgeInsets.only(left: 300.0, right: 300.0,top: 25.0),
                      child: TextFormField(
                          controller: loginController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Login',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста введите логин';
                            }
                            return null;
                          })
                  )
              ),

              Align(alignment: Alignment.center,
                  child: Padding(padding: const EdgeInsets.only(left: 300.0, right: 300.0, top: 25.0),
                      child: TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста введите пароль';
                            }
                            return null;
                          })
                  )
              ),

              Align(alignment: Alignment.center,
                  child: Padding(padding: const EdgeInsets.only(left: 300.0, right: 300.0, top: 25.0, bottom: 25.0),
                      child: TextFormField(
                          controller: passwordTwoController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Repeat Password',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста  повторите пароль';
                            }
                            return null;
                          })
                  )
              ),

              Align(alignment: Alignment.center,
                child: ElevatedButton(onPressed: (){
                  if(_form.currentState!.validate()){
                    _name=nameController.text;
                    _login=loginController.text;
                    _password=passwordController.text;
                    _passwordTwo=passwordTwoController.text;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>const LogScreen()));
                  }},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
                  child: const Text('sign in',style: TextStyle(fontSize: 20),),),
              ),

              Align(alignment: Alignment.center,
                  child: Padding(padding: const EdgeInsets.only(top: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>const LogScreen()));
                        },
                        child: const Text('Log in',style: TextStyle(fontSize: 16)),
                      )
                  )
              )
            ])
        )
    );
  }
}