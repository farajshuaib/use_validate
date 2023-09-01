

# flutter Use Validate

## Features

a small library contain utils validation regex to boost your development process and focus on your business logic

it's similar to yup the validation library for javascript, if you come from web development you will find it familiar

## Getting started

just add the package to your pubspec.yaml file


## Usage

here's an example of how it's used

```dart
import 'package:flutter/material.dart';
import 'package:use_validate/use_validate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email = "";
  String _password = "";

  void validateAndSave() {
    final FormState? form = _formKey.currentState;
    if (!form!.validate()) return;
    // TODO your code here
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    initialValue: _email,
                    onChanged: (value) => _email = value,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                    ),
                    validator: (value) {
                      final ValidationResult validationResult = validate(value: name,
                          validationRules: [
                            ValidationRule(pattern: FieldRule.required),
                            ValidationRule(pattern: FieldRule.email, errorMessage: "please enter a valid email"),
                          ]);
                      if (!validationResult.isValid) {
                        return validationResult.errorMessage;
                      }
                      return '';
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    initialValue: _password,
                    onChanged: (value) => _password = value,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                    ),

                    validator: (value) {
                      final ValidationResult validationResult = validate(value: name,
                          validationRules: [
                            ValidationRule(pattern: FieldRule.required),
                            ValidationRule(pattern: FieldRule.password, errorMessage: "please enter a valid password"),
                          ]);
                      if (!validationResult.isValid) {
                        return validationResult.errorMessage;
                      }
                      return '';
                    },
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      validateAndSave();
                    },
                    child: const Text('Submit'),
                  )
                ],
              ),
            )),
      )
      ,
    );
  }
}

```

