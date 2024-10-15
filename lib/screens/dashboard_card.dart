import 'package:flutter/material.dart';
import 'package:replica_2/shared/styled_text.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,

    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
    
    });

    final String title;
    final IconData icon;
    final Color color;
    final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.white),
              const SizedBox(height: 10),
              StyledText(
                title,              
              ),
            ],
          ),
        ),
      ),
    );
  }
}