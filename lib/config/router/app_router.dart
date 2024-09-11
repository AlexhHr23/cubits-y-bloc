

import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(

  initialLocation: '/',

  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/cubits',
      builder: (context, state) => CubitCounterScreen(),
    ),
    GoRoute(
      path: '/blocs',
      builder: (context, state) => BlocCounterScren()
    )
  ]
);