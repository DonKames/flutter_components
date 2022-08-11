import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomTextFormField(
                labelText: 'Nombre',
                hintText: 'Nombre del Usuario',
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                labelText: 'Apellido',
                hintText: 'Apellido del Usuario',
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                labelText: 'Correo',
                hintText: 'Correo del Usuario',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                labelText: 'Contraseña',
                hintText: 'Contrasñea del Usuario',
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
