import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedEase Login',
      theme: ThemeData(
        primarySwatch: Colors.red, // Utilizamos el color rojo como tema principal
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Med Ease'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView( // Envuelve el contenido del Scaffold en SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo de Heartlink
              Image.asset(
                'assets/logo_medease.jpeg', // Asegúrate de tener este archivo en tu proyecto
                height: 200,
              ),
              SizedBox(height: 20),
              // Campo de entrada de correo electrónico
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Campo de entrada de contraseña
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Botón de inicio de sesión
              ElevatedButton(
                onPressed: () {
                  // Lógica para iniciar sesión
                },
                child: Text('INICIAR SESIÓN',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 16),
              // Opciones de inicio de sesión social
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Iniciar sesión con Facebook
                    },
                    iconSize: 50,
                    icon: Icon(Icons.facebook,color: Colors.red,),
                  ),
                  IconButton(
                    onPressed: () {
                      // Iniciar sesión con Google
                    },
                    iconSize: 50,
                    icon: Icon(Icons.email,color: Colors.red,),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Enlace para restablecer la contraseña
              TextButton(
                child: Text(
                  '¿Olvidaste tu contraseña?',
                  style: TextStyle(
                    color: Colors.red, // Cambia el color aquí
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  // Lógica para restablecer la contraseña
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
