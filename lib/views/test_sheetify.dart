import 'package:flutter/material.dart';
import 'package:sheetify/sheetify.dart';

class TestSheetifyView extends StatefulWidget {
  const TestSheetifyView({super.key});

  @override
  State<TestSheetifyView> createState() => _TestSheetifyViewState();
}

class _TestSheetifyViewState extends State<TestSheetifyView> {
  final controller = MultiStateSheetController<FourStateSheet>(
    behavior: MultiSnappingBehavior(models: [
      OffsetSnappingModel({50}),
    ]),
    stateMapper: const FourStateMapper(),
    initialState: FourStateSheet.halfOpen
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MultiStateSheet(
        scrollController: controller,

        header: Container(
          color: Colors.green,
        ),
        content: [
          Text("Hello"),
        ],
      ),
    );
  }
}
