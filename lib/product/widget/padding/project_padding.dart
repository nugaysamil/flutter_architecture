import 'package:flutter/material.dart';

// Project genereral general paddings items
final class ProjectPadding extends EdgeInsets {
  const ProjectPadding._() : super.all(0);

  /// ALL
  const ProjectPadding.allNormal() : super.all(20);
  const ProjectPadding.allMedium() : super.all(16);
  const ProjectPadding.allSmall() : super.all(8);
  const ProjectPadding.allLarge() : super.all(32);

  /// /// Symmetric
  /// Only,left,right,top,bottom
}
