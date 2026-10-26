import 'package:advanced_project_omar_ahmed/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  late TextEditingController passwordController;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLens = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: "Email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter your email";
              }
            },
          ),

          verticalSpace(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: "Password",

            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your password";
              }
            },
          ),
          verticalSpace(24),
          PasswordValidations(
            hasUpperCase: hasUpperCase,
            hasLowerCase: hasLowerCase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasMinLens: hasMinLens,
          ),
        ],
      ),
    );
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasMinLens = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }
}
