import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:youniversity_app/layout/route_constants.dart';
import 'package:youniversity_app/pages/auth/sign_in_page.dart';
import 'package:youniversity_app/pages/auth/sign_up_page.dart';

class AuthLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final uri = state.uri.toString();
    return [
      if (uri == RouteConstants.authSignIn)
        const BeamPage(
          key: ValueKey(RouteConstants.authSignIn),
          title: 'Iniciar sesión',
          child: SignInPage(),
          type: BeamPageType.slideLeftTransition,
        ),
      if (uri == RouteConstants.authSignUp)
        const BeamPage(
          key: ValueKey(RouteConstants.authSignUp),
          title: 'Registrarse',
          child: SignUpPage(),
          type: BeamPageType.slideLeftTransition,
        ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => [
        RouteConstants.authRoot,
        RouteConstants.authWildcard,
      ];
}
