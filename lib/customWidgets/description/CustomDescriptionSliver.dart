import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../DescriptionRow.dart';

class CustomDescriptionSliver extends StatefulWidget {
  const CustomDescriptionSliver({Key? key}) : super(key: key);

  @override
  State<CustomDescriptionSliver> createState() => _CustomDescriptionSliverState();
}

class _CustomDescriptionSliverState extends State<CustomDescriptionSliver> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 150,
        color: Colors.transparent,
        child: Column(
          children: [


            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              children: const [
                Expanded(
                  child: DescriptionTextRow(
                    description: "single",
                    text: "yes",
                  ),
                ),
                Expanded(
                  child: DescriptionTextRow(
                    description: "gender",
                    text: "female",
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            const Expanded(
              child: DescriptionTextRow(
                description: "About me",
                text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra pretium convallis. Vestibulum interdum posuere maximus. Etiam scelerisque ipsum molestie.",
              ),
            )
          ],
        ),
      ),
    );
  }
}
