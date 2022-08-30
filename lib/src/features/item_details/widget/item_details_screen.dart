import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widget/failure_widget.dart';
import '../../../core/widget/loading_indicator.dart';
import '../bloc/item_details_bloc.dart';
import '../data/details_repository.dart';
import 'item_details_view.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemDetailsBloc>(
      create: (context) => ItemDetailsBloc(DetailsRepository()),
      child: const _ItemDetailsStates(),
    );
  }
}

class _ItemDetailsStates extends StatefulWidget {
  const _ItemDetailsStates({
    Key? key,
  }) : super(key: key);

  @override
  State<_ItemDetailsStates> createState() => _ItemDetailsStatesState();
}

class _ItemDetailsStatesState extends State<_ItemDetailsStates> {
  @override
  void initState() {
    super.initState();
    context.read<ItemDetailsBloc>().add(const ItemDetailsEvent.loadData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemDetailsBloc, ItemDetailsState>(
      builder: (context, state) {
        return Scaffold(
          body: state.when<Widget>(
            loading: () => const LoadingIndicator(),
            failure: (message) => FailureLoading(errorText: message),
            showDetailsWith: (details) => DetailsWithCarousel(models: details),
          ),
        );
      },
    );
  }
}
