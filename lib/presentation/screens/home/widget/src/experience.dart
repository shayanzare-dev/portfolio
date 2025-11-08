import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/timeline_tile.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/util/index.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final experiences = [
      SizedBox(
        child: TimeLineTile(
          position: context.localization.seniorSoftwareDeveloper,
          description: context.localization.taavSystemDescription,
          title: context.localization.taavSystem,
          urlTitle: 'TaavSystem',
          url: 'https://taavsys.com',
          assetImage: 'icon/experience/taavsys.png',
          date: '2023',
        ),
      ),
      SizedBox(
        child: TimeLineTile(
          position: context.localization.mobileLeadDeveloper,
          description: '',
          title: context.localization.taxi4030,
          urlTitle: 'Baram Company',
          url: 'https://baramtec.com',
          assetImage: 'icon/experience/baram.png',
          date: '2025',
        ),
      ),
    ];

    return ResponsiveBuilder(builder: (context, platform) {
      return Table(
        children: _buildTableRow(experiences, platform)
            .map((experience) => TableRow(children: experience))
            .toList(),
      );
    });
  }

  List<List<Widget>> _buildTableRow(
      List<Widget> experiences, ResponsivePlatform platform) {
    final columnCount = _responsiveColumns(platform);

    final partition = <List<Widget>>[];
    for (var i = 0; i < experiences.length; i += columnCount) {
      final count = (i + columnCount > experiences.length
          ? experiences.length
          : i + columnCount);
      partition.add(experiences.sublist(i, count));
    }
    while (partition.last.length < columnCount) {
      partition.last.add(SizedBox.shrink());
    }
    return partition;
  }

  int _responsiveColumns(ResponsivePlatform platform) =>
      platform.isDesktop ? 2 : 1;
}
