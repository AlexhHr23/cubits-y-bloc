import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_bloc/counter_bloc.dart';

class BlocCounterScren extends StatelessWidget {
  const BlocCounterScren({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (_) => CounterBloc(),
    child: const _BlocCounterView());
  }
}


class _BlocCounterView extends StatelessWidget { 
  void increasedCounterBy(BuildContext context, [int value = 1]) {
    //context.read<CounterBloc>().add(CounterIncreased(value));
    context.read<CounterBloc>().increaseBy(value);
  }


  const _BlocCounterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterBloc counterBloc) => Text('Bloc counter: ${counterBloc.state.transactionCount}')),
        actions: [
          IconButton(
            onPressed: ()=> context.read<CounterBloc>().resetCounter(), 
            icon: const Icon(Icons.refresh_rounded)
          )
        ],
      ),
      body: Center(
        child: context.select(
          (CounterBloc counterBloc) => Text('Cunter value: ${counterBloc.state.counter}'),
      )),
      floatingActionButton: Column(
        
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: const Text('+3'),
            onPressed: () => increasedCounterBy(context, 3),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '2',
            child: const Text('+2'),
            onPressed: () => increasedCounterBy(context, 2)
          ),
           const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '3',
            child: const Text('+1'),
            onPressed: () => increasedCounterBy(context, 1)
          ),
          const SizedBox(height: 15),
    
        ],
      ),
    );
  }
}