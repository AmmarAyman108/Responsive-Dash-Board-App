import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/custom_container.dart';
import 'package:full_responsive_adaptive_ui_project/features/home_view/presentation/views/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(children: [
      const IncomeHeader(),
      const SizedBox(height: 20),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: IncomeChart(),
            ),
            Expanded(
              child: Text("data"),
            ),
          ],
        ),
      )
    ]);
  }
}

class IncomeChart extends StatelessWidget {
  const IncomeChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            value: 40,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            value: 25,
            showTitle: false,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            value: 20,
            showTitle: false,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            value: 22,
            showTitle: false,
            color: const Color(0xFFE2DECD),
          ),
        ],
      ),
    );
  }
}
