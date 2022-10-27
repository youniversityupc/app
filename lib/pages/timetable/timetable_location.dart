import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:youniversity_app/utils/no_transition_page.dart';

class TimetableLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const NoTransitionPage(
        key: ValueKey('/timetable'),
        title: 'Horario',
        child: Text('Horario'),
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/timetable', '/timetable/*'];
}
