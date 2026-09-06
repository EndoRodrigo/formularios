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

class _RegisterView extends StatefulWidget {
  const new({super.key});

  @override
  State<_RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<_RegisterView> {
  final _fromKey = GlobalKey<FormState>();

  String username = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _fromKey,
            child: Column(
              children: [
                FlutterLogo(size: 100),
                CustomTextFormField(
                  label: 'Nombre del usuario',
                  onChanged: (value) => username = value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo requerido';
                    }
                    if (value.trim().isEmpty) return 'Campos reuqrido';
                    if (value.length < 5) return 'Mas de 6 letras';
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextFormField(
                  label: 'Correo electroncio',
                  onChanged: (value) => email = value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo requerido';
                    }
                    if (value.trim().isEmpty) return 'Campos reuqrido';
                    final emailRegExp = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    );
                    if(!emailRegExp.hasMatch(value)) return 'Formato de correo invalido';
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextFormField(
                  label: 'Contraseña',
                  obscureText: true,
                  onChanged: (value) => password = value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo requerido';
                    }
                    if (value.trim().isEmpty) return 'Campos reuqrido';
                    if (value.length < 5) return 'Mas de 6 letras';
                    return null;
                  },
                ),

                SizedBox(height: 20),

                FilledButton.tonalIcon(
                  onPressed: () {
                    final isValid = _fromKey.currentState!.validate();
                    if (!isValid) return;
                  },
                  icon: Icon(Icons.save),
                  label: Text('Guardar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}
