import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class ProjetoSaborLocalAuthUser {
  ProjetoSaborLocalAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ProjetoSaborLocalAuthUser> projetoSaborLocalAuthUserSubject =
    BehaviorSubject.seeded(ProjetoSaborLocalAuthUser(loggedIn: false));
Stream<ProjetoSaborLocalAuthUser> projetoSaborLocalAuthUserStream() =>
    projetoSaborLocalAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
