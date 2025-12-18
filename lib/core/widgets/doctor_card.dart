import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String speciality;
  final double rating;
  final int fee;
  final int etaMinutes;
  final VoidCallback onJoinQueue;

  const DoctorCard({
    super.key,
    required this.name,
    required this.speciality,
    required this.rating,
    required this.fee,
    required this.etaMinutes,
    required this.onJoinQueue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 26,
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: AppTextStyles.heading),
                const SizedBox(height: 4),
                Text(speciality, style: AppTextStyles.subheading),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star, size: 16, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(rating.toString()),
                    const SizedBox(width: 16),
                    const Icon(Icons.timer, size: 16),
                    const SizedBox(width: 4),
                    Text('$etaMinutes min'),
                  ],
                ),
                const SizedBox(height: 10),
                Text('Consultation Fee: ₹$fee'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: onJoinQueue,
            child: const Text('Join Queue'),
          ),
        ],
      ),
    );
  }
}
