import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(title, style: AppTextStyles.sectionTitle),
    );
  }
}
