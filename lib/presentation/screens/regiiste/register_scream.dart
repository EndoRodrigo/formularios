import 'package:flutter/material.dart';
import 'package:formularios/presentation/screens/widgets/imputs/Custom_Text_Form_Field.dart';

class RegisterScream extends StatelessWidget {
  const RegisterScream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nuevo usuario')),
      body: _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FlutterLogo(size: 100),
              CustomTextFormField(label:'Nombre del usuario',),
              SizedBox(height: 10,),
              CustomTextFormField(label: 'Correo electroncio',),
              SizedBox(height: 10,),
              CustomTextFormField(label: 'Contraseña',obscureText: true,),


              SizedBox(height: 20),

              FilledButton.tonalIcon(
                onPressed: () {},
                icon: Icon(Icons.save),
                label: Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}
