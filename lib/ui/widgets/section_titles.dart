
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key, required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
        Spacer(),
        TextButton(
          onPressed: onTap,
          child: Text("See All",style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontSize: 20)),
        )
      ],
    );
  }
}
