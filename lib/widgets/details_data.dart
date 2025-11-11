import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final String id;
  final String course;
  final DateTime date;
  final List<String> rooms;

  const DetailData({
    super.key,
    required this.id,
    required this.course,
    required this.date,
    required this.rooms,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate = "${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}";

    final now = DateTime.now();
    final difference = date.difference(now);
    final days = difference.inDays;
    final hours = difference.inHours % 24;

    final remainingTime = difference.isNegative
        ? "Испитот веќе помина"
        : "$days дена, $hours часа";

    return Center(
      child: Card(
        elevation: 6,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.blue.shade50, Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Информации за испитот по $course",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 12),
              const Divider(thickness: 1.2),
              const SizedBox(height: 8),

              _infoTile(null,'Код на предмет', id),
              _infoTile(Icons.school_outlined, 'Курс', course),
              _infoTile(Icons.calendar_today_outlined, 'Датум на испит', formattedDate),
              _infoTile(Icons.timer_outlined, 'Преостанато време', remainingTime),
              const SizedBox(height: 12),

              const Text(
                'Простории во кои се одржува испитот:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: rooms
                      .map(
                        (room) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          const Icon(Icons.meeting_room, size: 20, color: Colors.teal),
                          const SizedBox(width: 8),
                          Text(
                            room,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoTile(IconData? icon, String label, String value) {

    final textColor = (label == 'Преостанато време' &&
        value == 'Испитот веќе помина')
        ? Colors.red
        : Colors.teal;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 17, color: Colors.black87),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
