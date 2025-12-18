import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/widgets/doctor_card.dart';
import '../queue/queue_status_screen.dart';


class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Available Doctors'),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            DoctorCard(
              name: 'Dr. Arun Kumar',
              speciality: 'Dentist',
              rating: 4.6,
              fee: 500,
              etaMinutes: 15,
              onJoinQueue: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const QueueStatusScreen(),
                  ),
                );
              },
            ),
            DoctorCard(
              name: 'Dr. Priya Sharma',
              speciality: 'Cardiologist',
              rating: 4.8,
              fee: 800,
              etaMinutes: 20,
              onJoinQueue: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const QueueStatusScreen(),
                  ),
                );
              },
            ),
            DoctorCard(
              name: 'Dr. Rahul Verma',
              speciality: 'Orthopedic',
              rating: 4.4,
              fee: 600,
              etaMinutes: 10,
              onJoinQueue: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const QueueStatusScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
