import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpandableAgreement extends StatelessWidget {
  const ExpandableAgreement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      header: Text('Lorem ipsum dolor sit amet', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
      theme: ExpandableThemeData(
          headerAlignment: ExpandablePanelHeaderAlignment.center
      ),
      collapsed: Text('Lorem ipsum dolor sit amet', softWrap: true, maxLines: 2,
        overflow: TextOverflow.ellipsis, style:
        TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF727FA3)
        )
      ),
      expanded: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'In nibh massa arcu elementum sed feugiat. Purus fringilla iaculis '
          'turpis mattis in feugiat ullamcorper turpis in. Pellentesque purus, '
          'blandit erat proin laoreet quis. Amet enim, hendrerit pellentesque '
          'nunc posuere. Mauris ac purus eu congue. Tincidunt risus at elementum '
          'orci nisl vivamus sed. Duis facilisis massa morbi nisl. Facilisis '
          'volutpat nulla aliquet eu id bibendum feugiat vulputate diam. Sed '
          'ultricies phasellus lectus non massa facilisis massa. ',
        softWrap: true, style:
        TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xFF727FA3)
        )
      ),
    );
  }
}
