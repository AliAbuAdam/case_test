import 'package:case_test/resources/resources.dart';
import 'package:case_test/src/app/extensions/extensions.dart';
import 'package:case_test/src/app/utils/routes_util.dart';
import 'package:case_test/src/app/widgets/components/app_list_tile.dart';
import 'package:case_test/src/features/dependencies/widgets/dependencies_scope.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yookassa_payments_flutter/yookassa_payments_flutter.dart';

import '../../domain/bloc/exchange_bloc.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({super.key});

  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            title: Text('Yookassa'),
          ),
          SliverPadding(
            padding: context.padding.internal,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  AppListTile(
                    title: 'Купить один рупор',
                    subTitle: '',
                    iconPath: ImagesSvg.tileIcon,
                    iconSize: 24,
                    onTap: () {
                      DependenciesScope.of(context).exchangeBloc.add(
                            ExchangeEvent.createOrder(
                              title: 'Купить один рупор',
                              subTitle: '',
                              amountValue: 100,
                              currency: Currency.rub,
                              userId: context.user.id,
                              ruporCount: 1,
                            ),
                          );
                      context.goNamed(Routes.exchangeCheck.toName);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
