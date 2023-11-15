import 'package:al_madina_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubmitgridItemWidget extends StatelessWidget {
  const SubmitgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 65.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Text(
        "Stray Animals",
        style: theme.textTheme.titleMedium,
      ),
    );
  }
}
