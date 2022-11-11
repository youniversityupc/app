import 'package:flutter/material.dart';
import 'package:youniversity_app/pages/courses/components/course_card.dart';
import 'package:youniversity_app/pages/courses/models/course_model.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  final List<CourseModel> _courses = const [
    CourseModel(
        courseName: 'Cálculo II',
        teacherName: 'Luis Ronald Príncipe Jiménez',
        frequency: 'Martes, Viernes',
        backgroundColor: Colors.red),
    CourseModel(
      courseName: 'Diseño de Bases de Datos',
      teacherName: 'Javier Ulises Rosales Huamanchumo',
      frequency: 'Miércoles, Viernes',
      backgroundColor: Colors.green,
    ),
    CourseModel(
      courseName: 'Física II',
      teacherName: 'José Augusto Truyenque Tanaka',
      frequency: 'Lunes, Miércoles, Jueves',
      backgroundColor: Colors.lightBlue,
    ),
    CourseModel(
      courseName: 'IHC y Tecnologías Móviles',
      teacherName: 'Eder Ramiro Quispe Vílchez',
      frequency: 'Martes',
      backgroundColor: Colors.orange,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Expanded(
        child: Material(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          child: ListView.separated(
            itemCount: _courses.length,
            itemBuilder: (context, index) {
              final course = _courses[index];
              return CourseCard(course: course);
            },
            separatorBuilder: (_, __) => const SizedBox(height: 16),
          ),
        ),
      ),
    );
  }
}