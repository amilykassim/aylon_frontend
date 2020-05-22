import 'package:aylon_frontend/learn/bloc/player_listing_bloc.dart';
import 'package:aylon_frontend/learn/pages/HomePage.dart';
import 'package:aylon_frontend/learn/services/repository.dart';
import 'package:aylon_frontend/pages/discover/discoverPage.dart';
import 'package:aylon_frontend/pages/home/test.dart';
import 'package:aylon_frontend/pages/setting/settingPage.dart';
import 'package:aylon_frontend/pages/shop/shopPage.dart';
import 'package:aylon_frontend/pages/single_post/singlePost.dart';
import 'package:aylon_frontend/pages/single_post/singlePostItem.dart';
import 'package:aylon_frontend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/home/startPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  PlayerRepository _repository = PlayerRepository();

  runApp(MyApp(
    playerRepository: _repository,
  ));
}

class MyApp extends StatelessWidget {
  final PlayerRepository playerRepository;

  MyApp({this.playerRepository});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        playerRepository: playerRepository,
      ),
    );
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider<PlayerListingBloc>(
    //       create: (BuildContext context) => PlayerListingBloc(),
    //     ),
    //   ],
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: HomePage(
    //       playerRepository: playerRepository,
    //     ),
    //     // onGenerateRoute: (RouteSettings settings) {
    //     //   final data = settings.arguments;
    //     //   switch (settings.name) {
    //     //     case '/':
    //     //       return CupertinoPageRoute(
    //     //           builder: (_) => HomePage(), settings: settings);
    //     //     case SETTING_PAGE:
    //     //       return CupertinoPageRoute(
    //     //           builder: (_) => SettingPage(), settings: settings);
    //     //     case DISCOVER_PAGE:
    //     //       return CupertinoPageRoute(
    //     //           builder: (_) => DiscoverPage(), settings: settings);
    //     //     case SHOP_PAGE:
    //     //       return CupertinoPageRoute(
    //     //           builder: (_) => ShopPage(), settings: settings);
    //     //     case SINGLE_POST_PAGE:
    //     //       return CupertinoPageRoute(
    //     //         builder: (_) => SinglePostPage(data: data),
    //     //         settings: settings,
    //     //       );

    //     //     // TODO: ADD A DEFAULT ROUTE IN CASE NOTHING MATCH. IT WILL SUPPRESS THE ABOVE WARNING
    //     //   }
    //     // },
    //   ),
    // );
  }
}






// import 'dart:async';

// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

// class SimpleBlocDelegate extends BlocDelegate {
//   @override
//   void onEvent(Bloc bloc, Object event) {
//     print(event);
//     super.onEvent(bloc, event);
//   }

//   @override
//   void onTransition(Bloc bloc, Transition transition) {
//     print(transition);
//     super.onTransition(bloc, transition);
//   }

//   @override
//   void onError(Bloc bloc, Object error, StackTrace stacktrace) {
//     print(error);
//     super.onError(bloc, error, stacktrace);
//   }
// }

// void main() {
//   BlocSupervisor.delegate = SimpleBlocDelegate();
//   runApp(App());
// }

// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => ThemeBloc(),
//       child: BlocBuilder<ThemeBloc, ThemeData>(
//         builder: (_, theme) {
//           return MaterialApp(
//             title: 'Flutter Demo',
//             home: BlocProvider(
//               create: (_) => CounterBloc(),
//               child: CounterPage(),
//             ),
//             theme: theme,
//           );
//         },
//       ),
//     );
//   }
// }

// class CounterPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Counter')),
//       body: BlocBuilder<CounterBloc, int>(
//         builder: (_, count) {
//           return Center(
//             child: Text(
//               '$count',
//               style: const TextStyle(fontSize: 24.0),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               child: const Icon(Icons.add),
//               onPressed: () =>
//                   context.bloc<CounterBloc>().add(CounterEvent.increment),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               child: const Icon(Icons.remove),
//               onPressed: () =>
//                   context.bloc<CounterBloc>().add(CounterEvent.decrement),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               child: const Icon(Icons.brightness_6),
//               onPressed: () => context.bloc<ThemeBloc>().add(ThemeEvent.toggle),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               backgroundColor: Colors.red,
//               child: const Icon(Icons.error),
//               onPressed: () => context.bloc<CounterBloc>().add(null),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// enum CounterEvent { increment, decrement }

// class CounterBloc extends Bloc<CounterEvent, int> {
//   @override
//   int get initialState => 0;

//   @override
//   Stream<int> mapEventToState(CounterEvent event) async* {
//     switch (event) {
//       case CounterEvent.decrement:
//         yield state - 1;
//         break;
//       case CounterEvent.increment:
//         yield state + 1;
//         break;
//       default:
//         throw Exception('oops');
//     }
//   }
// }

// enum ThemeEvent { toggle }

// class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
//   @override
//   ThemeData get initialState => ThemeData.light();

//   @override
//   Stream<ThemeData> mapEventToState(ThemeEvent event) async* {
//     switch (event) {
//       case ThemeEvent.toggle:
//         yield state == ThemeData.dark() ? ThemeData.light() : ThemeData.dark();
//         break;
//     }
//   }
// }