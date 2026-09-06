import 'package:formularios/presentation/screens/regiiste/register_scream.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/screens/bloc_counter_screen.dart';
import '../../presentation/screens/cubit_counter_screen.dart';
import '../../presentation/screens/home_screen.dart';


final appRouter = GoRouter(
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/cubits',
      builder: (context, state) => const CubitCounterScreen(),
    ),

    GoRoute(
      path: '/counter-bloc',
      builder: (context, state) => const BlocCounterScreen(),
    ),
    GoRoute(path: '/register',  builder: (context, state) => RegisterScream(),)

  ]
);