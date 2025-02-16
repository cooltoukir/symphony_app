import 'package:flutter/material.dart';
import 'package:symphony_app/core/constants/app_constants.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(AppConstants.socialScreenTitle));
  }
}
