import 'package:case_test/src/app/extensions/extensions.dart';
import 'package:case_test/src/app/widgets/components/app_elevated_button.dart';
import 'package:case_test/src/app/widgets/components/app_error.dart';
import 'package:case_test/src/app/widgets/components/app_loader.dart';
import 'package:case_test/src/features/dependencies/widgets/dependencies_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../domain/bloc/exchange_bloc.dart';
import '../../utils/exchange_utils.dart';

class ExchangeCheckPage extends StatelessWidget {
  const ExchangeCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<ExchangeBloc, ExchangeState>(
          bloc: DependenciesScope.of(context).exchangeBloc,
          listener: (context, state) {
            state.whenOrNull(
              success: (status, ruporCount) {
                if (status == ExchangeOrderStatuses.succeeded) {}
              },
            );
          },
          builder: (context, state) {
            return state.when(
              isWaiting: () => const AppLoader(),
              error: (message) =>
                  AppError(message ?? 'Ошибка получения статуса платежа'),
              success: (status, ruporCount) => Padding(
                padding: context.padding.mainSides,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'СТАТУС ПЛАТЕЖА',
                      style: context.text.title,
                    ),
                    const SizedBox(height: 30),
                    if (status == ExchangeOrderStatuses.pending)
                      Column(
                        children: [
                          const Icon(
                            Icons.access_time,
                            size: 60,
                            color: Color.fromARGB(255, 219, 168, 118),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'В обработке',
                            style: context.text.subtitle,
                          ),
                        ],
                      ),
                    if (status == ExchangeOrderStatuses.canceled)
                      Column(
                        children: [
                          const Icon(
                            Icons.cancel_rounded,
                            size: 60,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Отменён',
                            style: context.text.subtitle,
                          ),
                        ],
                      ),
                    if (status == ExchangeOrderStatuses.succeeded)
                      Column(
                        children: [
                          const Icon(
                            Icons.check,
                            size: 60,
                            color: Colors.green,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Оплачен',
                            style: context.text.subtitle,
                          ),
                        ],
                      ),
                    if (status == ExchangeOrderStatuses.waitingForCapture)
                      Column(
                        children: [
                          const Icon(
                            Icons.update_sharp,
                            size: 60,
                            color: Colors.orange,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Ожидает подтверждения',
                            style: context.text.subtitle,
                          ),
                        ],
                      ),
                    const SizedBox(height: 30),
                    AppElevatedButton(
                      onPressed: () {
                        context.pop();
                      },
                      label: 'Перейти в профиль',
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
