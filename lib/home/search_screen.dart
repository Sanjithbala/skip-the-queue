import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_text_styles.dart';
import 'doctor_list_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find your doctor',
                style: AppTextStyles.heading,
              ),
              const SizedBox(height: 6),
              Text(
                'Search by speciality',
                style: AppTextStyles.subheading,
              ),
              const SizedBox(height: 20),

              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search doctor or speciality',
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Speciality Grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    _SpecialityCard(
                      title: 'Dentist',
                      icon: Icons.medical_services,
                      onTap: () => _openDoctorList(context),
                    ),
                    _SpecialityCard(
                      title: 'Neurologist',
                      icon: Icons.psychology,
                      onTap: () => _openDoctorList(context),
                    ),
                    _SpecialityCard(
                      title: 'Orthopedic',
                      icon: Icons.accessibility,
                      onTap: () => _openDoctorList(context),
                    ),
                    _SpecialityCard(
                      title: 'Cardiologist',
                      icon: Icons.favorite,
                      onTap: () => _openDoctorList(context),
                    ),
                    _SpecialityCard(
                      title: 'Dermatologist',
                      icon: Icons.face,
                      onTap: () => _openDoctorList(context),
                    ),
                    _SpecialityCard(
                      title: 'General',
                      icon: Icons.local_hospital,
                      onTap: () => _openDoctorList(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openDoctorList(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const DoctorListScreen(),
      ),
    );
  }
}

class _SpecialityCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _SpecialityCard({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: AppColors.primary.withValues(alpha: 0.15),
              child: Icon(
                icon,
                size: 28,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: AppTextStyles.subheading,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
