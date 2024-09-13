import 'package:flutter/material.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuevo usuario'),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const FlutterLogo(size: 100),
              _RegiserForm(),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class _RegiserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [

          CustomTextFormField(
            label: 'Nombre de usuario',
          ),

          const SizedBox(height: 20),

          CustomTextFormField(
            label: 'Correo electrónico',
          ),

          const SizedBox(height: 20),
          
          CustomTextFormField(
            label: 'Contraseña',
            obscureText: true,
          ),
          
          const SizedBox(height: 20),

          FilledButton.tonalIcon(
            onPressed: () {},
            icon: const Icon(Icons.save),
            label: const Text('Crear usuario'),
          ),
        ],
      ),
    );
  }
}
