import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:trumed/features/auth/login/data/models/fact_model.dart';
import 'package:trumed/features/auth/login/domain/entity/fact_entity.dart';
import 'package:trumed/features/auth/login/presentation/blocs/login/login_bloc.dart';
import 'package:trumed/l10n/gen_l10n/app_localizations.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => GetIt.I.get<LoginBloc>(),
        child: Builder(
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<LoginBloc>()
                          .add(LoginEvent.oneMoreFunFact());
                    },
                    child: Text(AppLocalizations.of(context)!.titleLogin),
                  ),
                ),
                BlocBuilder<LoginBloc, LoginState>(
                  bloc: context.read<LoginBloc>(),
                  builder: (context, state) {
                    return state.when(inital: () {
                      return Center(
                        child: mainButton(context),
                      );
                    }, loading: () {
                      return _loading;
                    }, funFact: (fact) {
                      return _factUI(fact, context);
                    }, error: (error) {
                      return _error(error);
                    });
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Center _error(String error) {
    return Center(
      child: Text(error),
    );
  }

  Widget _factUI(FactEntity fact, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fact.fact),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Fun fact, the abve fact has: ${fact.length} characters',
          ),
          const SizedBox(
            height: 15,
          ),
          mainButton(context),
        ],
      ),
    );
  }

  Widget get _loading => const Center(
        child: CircularProgressIndicator(),
      );

  Widget mainButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.read<LoginBloc>().add(LoginEvent.oneMoreFunFact());
        },
        child: const Text("Hit me baby one more time"));
  }
}
