import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  FocusNode nombreFocus;
  FocusNode correoFocus;
  FocusNode passwordFocus;

  String nombre;
  String correo;
  String password;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Juan S. Miranda M.'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Tienda de Cosméticos',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black
                    ),
                ),
                Container(
                  width: 800.0,
                  height: 150.0,
                  child: Center(
                    child: Image.network(
                        'data:image/jpeg;base64,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'),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Ingrese nombre completo',
                      hintText: 'Ejemplo: Juan Pérez Pérez',
                      prefixIcon: Icon(
                        Icons.account_box_rounded,
                        color: Colors.yellow,
                      )
                    ),
                  //controller: nombreTextController,
                  onSaved: (value) {
                    nombre = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo Obligatorio';
                    }
                  },
                  focusNode: this.nombreFocus,
                  onEditingComplete: () => requestFocus(context, correoFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 6.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'e-mail',
                      hintText: 'tunombre@gmail.com',
                      prefixIcon: Icon(
                        Icons.drafts,
                        color: Colors.orangeAccent,
                      )),
                  //controller: apTextController,
                  onSaved: (value) {
                    correo = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Campo Obligatorio';
                    }
                  },
                  focusNode: this.passwordFocus,
                  onEditingComplete: () => requestFocus(context, correoFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 6.0,
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Contraseña',
                        hintText: 'alfanumérico',
                        prefixIcon: Icon(
                          Icons.admin_panel_settings_sharp,
                          color: Colors.pink.shade200,
                        )),
                    //controller: apTextController,
                    onSaved: (value) {
                      password = value;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo Obligatorio';
                      }
                    }),
                SizedBox(
                  height: 6.0,
                ),
                RaisedButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();
                      if (nombre.compareTo('Juan Miranda') == 0 &&
                          correo.compareTo('juanm@utsjr.edu.com') ==
                              0 &&
                          password.compareTo('juan123') == 0) {
                        Navigator.pushNamed(context, 'formulario_dos',
                            arguments: Argumentos(
                                nombre: this.nombre,
                                correo: this.correo,
                                password: this.password));
                      } else {
                        print('Datos incorrectos');
                      }
                    }
                  },
                  child: Text(' Aceptar '),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus();
  }

  @override
  void initState() {
    super.initState();
    //nombreTextController = TextEditingController();
    //apTextController = TextEditingController();
    nombreFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    //nombreTextController.dispose();
    //apTextController.dispose();
    nombreFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String correo;
  String password;

  Argumentos({this.nombre, this.correo, this.password});

  get apellido => null;

  get edad => null;
}
