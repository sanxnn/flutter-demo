import 'package:flutter/material.dart';

import '../core/components/avatar.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_text_styles.dart';

class KelompokPage extends StatelessWidget {
  const KelompokPage({super.key});

  static const _groupName = 'KELOMPAK 1 ONE ONLY';
  static const _groupCourse = 'Teknik Informatika';

  static const _members = [
    {'name': 'Muhammad Hasan Al Bukhori', 'role': 'Ketua'},
    {'name': 'Rayhan Riyadhul Jinan', 'role': 'Anggota'},
    {'name': 'Rafi Rafsajani', 'role': 'Anggota'},
    {'name': 'Fikriyah Imtiyaz', 'role': 'Anggota'},
    {'name': 'Abhista Yusuf', 'role': 'Anggota'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGroupCard(),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  'Anggota Kelompok',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              ...List.generate(_members.length, (index) {
                final member = _members[index];
                final isLeader = member['role'] == 'Ketua';
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _buildMemberTile(
                    index: index,
                    name: member['name']!,
                    role: member['role']!,
                    isLeader: isLeader,
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGroupCard() {
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
          Row(
            children: [
              const Avatar(initials: 'K', size: 44),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _groupName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _groupCourse,
                      style: AppTextStyles.bodySecondary,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.people_rounded, size: 18, color: AppColors.textMuted),
              const SizedBox(width: 6),
              Text(
                '${_members.length} Anggota',
                style: AppTextStyles.bodySecondary,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMemberTile({
    required int index,
    required String name,
    required String role,
    required bool isLeader,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isLeader ? AppColors.primaryLight : AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isLeader ? AppColors.primary.withValues(alpha: 0.3) : AppColors.border,
        ),
      ),
      child: Row(
        children: [
          Avatar(
            initials: '${index + 1}',
            size: 40,
            background: isLeader ? AppColors.primary : const Color(0xFFEEF2FF),
            textColor: isLeader ? Colors.white : AppColors.primary,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  role,
                  style: AppTextStyles.caption,
                ),
              ],
            ),
          ),
          if (isLeader)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Ketua',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
