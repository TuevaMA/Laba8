import 'package:flutter/material.dart';
import 'sign.dart';
import 'album.dart';

void main(){runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
        home: LogScreen());
  }
}

//-------СТРАНИЦА ВХОДА-------//
class LogScreen extends StatefulWidget{
  const LogScreen({super.key});

  @override
  State<LogScreen> createState() => _LogScreenState();
}


class _LogScreenState extends State<LogScreen>{
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  String _login='';
  String _password='';

  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
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
                      child: Text('Log in', style: TextStyle(fontSize: 50.0))
                  )
              ),

              Align(alignment: Alignment.center,
                  child: Padding(padding: const EdgeInsets.only(left: 300.0, right: 300.0,top: 55.0),
                      child: TextFormField(
                          controller: loginController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Login',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста введите свой логин';
                            }
                            return null;
                          })
                  )
              ),

              Align(alignment: Alignment.center,
                  child: Padding(padding: const EdgeInsets.only(left: 300.0, right: 300.0, bottom: 25.0, top: 25.0),
                      child: TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста введите свой пароль';
                            }
                            return null;
                          })
                  )
              ),

              Align(alignment: Alignment.center,
                child: ElevatedButton(onPressed: (){
                  if(_form.currentState!.validate()){
                    _login=loginController.text;
                    _password=passwordController.text;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>const AlbumsScreen()));
                  }},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
                  child: const Text('log in',style: TextStyle(fontSize: 20),),),
              ),

              Align(alignment: Alignment.center,
                  child: Padding(padding: const EdgeInsets.only(top: 55.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>const SignScreen()));
                        },
                        child: const Text('Sign in',style: TextStyle(fontSize: 16)),
                      )
                  )
              )
            ])
        )
    );
  }
}
