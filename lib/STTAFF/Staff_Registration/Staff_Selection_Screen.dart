import 'package:flutter/material.dart';
import 'package:flutter_sanar_proj/STTAFF/Staff_Registration/Registration_Staff_Doctor_Screen.dart';
import 'package:flutter_sanar_proj/STTAFF/Staff_Registration/Registration_Staff_Nurse_Screen.dart';

class StaffSelectionScreen extends StatelessWidget {
  const StaffSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Select Staff Type'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStaffCard(
                  context,
                  icon: Icons.local_hospital,
                  label: 'Doctor',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const RegistrationDoctorScreen(staffType: 'Doctor'),
                      ),
                    );
                  },
                ),
                _buildStaffCard(
                  context,
                  icon: Icons.business,
                  label: 'Nurse',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationNurseScreen(
                              staffType: 'Nurse')),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildStaffCard(
              context,
              icon: Icons.business,
              label: 'Hospital',
              onTap: () {
                // Handle hospital-specific navigation
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStaffCard(BuildContext context,
      {required IconData icon,
      required String label,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.teal,
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}