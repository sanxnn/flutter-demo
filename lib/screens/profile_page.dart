import 'package:flutter/material.dart';

import '../core/components/avatar.dart';
import '../core/components/info_row.dart';
import '../core/components/section_header.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              _buildProfileHeader(),
              const SizedBox(height: 24),
              _buildAcademicSection(),
              const SizedBox(height: 24),
              _buildAccountSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Avatar(
            initials: 'HA',
            size: 96,
          ),
          const SizedBox(height: 16),
          const Text(
            'Muhammad Hasan Al Bukhori',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Mahasiswa',
            style: AppTextStyles.bodySecondary,
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Golongan C',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAcademicSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(title: 'INFORMASI AKADEMIK'),
          InfoRow(
            icon: Icons.credit_card_rounded,
            label: 'NIM',
            value: 'E41251012',
          ),
          InfoRow(
            icon: Icons.school_rounded,
            label: 'Program Studi',
            value: 'Informatika',
          ),
          InfoRow(
            icon: Icons.people_rounded,
            label: 'Golongan',
            value: 'C',
          ),
          InfoRow(
            icon: Icons.cake_rounded,
            label: 'Tanggal Lahir',
            value: '20 Maret 2007',
          ),
        ],
      ),
    );
  }

  Widget _buildAccountSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          _buildAccountTile(
            icon: Icons.settings_rounded,
            label: 'Pengaturan',
            onTap: () {},
          ),
          _buildAccountTile(
            icon: Icons.logout_rounded,
            label: 'Keluar',
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAccountTile({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Row(
            children: [
              Icon(icon, size: 22, color: AppColors.textSecondary),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  label,
                  style: AppTextStyles.body,
                ),
              ),
              Icon(Icons.chevron_right_rounded, size: 20, color: AppColors.textMuted),
            ],
          ),
        ),
      ),
    );
  }
}
