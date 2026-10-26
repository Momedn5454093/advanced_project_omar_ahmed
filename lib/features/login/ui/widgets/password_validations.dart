import 'package:advanced_project_omar_ahmed/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLens;

  const PasswordValidations({
    super.key,
    required this.hasUpperCase,
    required this.hasLowerCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLens,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationsRow("At least one uppercase letter", hasUpperCase),
        verticalSpace(2),
        buildValidationsRow("At least one lowercase letter", hasLowerCase),
        verticalSpace(2),
        buildValidationsRow("At least one number", hasNumber),
        verticalSpace(2),
        buildValidationsRow(
          "At least one special character",
          hasSpecialCharacter,
        ),
        verticalSpace(2),
        buildValidationsRow("At least 8 characters long", hasMinLens),
      ],
    );
  }

  Widget buildValidationsRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(radius: 5, backgroundColor: ColorsManager.gray),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
