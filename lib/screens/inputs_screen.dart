import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Camilo',
      'last_name': 'Santander',
      'email': 'camilo@mail.com',
      'password': '1234',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomTextFormField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del Usuario',
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextFormField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del Usuario',
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextFormField(
                  labelText: 'Correo',
                  hintText: 'Correo del Usuario',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextFormField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del Usuario',
                  obscureText: true,
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      return;
                    }
                    //* Todo imprimir valores de inputs
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
