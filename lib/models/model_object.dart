import 'package:flutter/material.dart';

import 'doc_model.dart';

List<DocGroup> docs = [
  DocGroup(
      title: 'state management'.toUpperCase(),
      lead: const Icon(Icons.extension),
      doc: [
        Doc(
            filename: 'Introduction'.toUpperCase(),
            file: 'flu-md/state-management/index.md'),
        Doc(
            filename: "simple state manager".toUpperCase(),
            file: "flu-md/state-management/simple-state-manager/index.md"),
        Doc(
            filename: 'get state rebuild'.toUpperCase(),
            file: 'flu-md/state-management/getx-rebuild-state/index.md'),
        Doc(
            filename: 'reactive state manager'.toUpperCase(),
            file: 'flu-md/state-management/reactive-state-manager/index.md'),
        Doc(
            filename: 'State mixing'.toUpperCase(),
            file: 'flu-md/state-management/mixing-two-state-manager/index.md'),
        Doc(
            filename: 'mixing two state manager'.toUpperCase(),
            file: 'flu-md/state-management/mixing-two-state-manager/index.md'),
      ]),
  DocGroup(
      title: "dependency management".toUpperCase(),
      lead: const Icon(Icons.menu),
      doc: [
        Doc(
            filename: 'Introduction'.toUpperCase(),
            file: 'flu-md/dependency-management/intro/index.md'),
        Doc(
            filename: 'Binding'.toUpperCase(),
            file: 'flu-md/dependency-management/binding/index.md'),
        Doc(
            filename: 'instancing method'.toUpperCase(),
            file: 'flu-md/dependency-management/instancing/index.md'),
        Doc(
            filename: 'instantiated method'.toUpperCase(),
            file: 'flu-md/dependency-management/instantiated/index.md'),
        Doc(
            filename: 'differences method'.toUpperCase(),
            file: 'flu-md/dependency-management/differences/index.md'),
        Doc(
            filename: 'Notes'.toUpperCase(),
            file: 'flu-md/dependency-management/notes/index.md'),
      ]),
  DocGroup(
      title: "Route management".toUpperCase(),
      lead: const Icon(Icons.directions),
      doc: [
        Doc(
            filename: 'Introduction'.toUpperCase(),
            file: 'flu-md/route-management/index.md'),
      ]),
];
Doc doc1 = Doc(
    filename: "introdoction to getx".toUpperCase(), file: "flu-md/index.md");
