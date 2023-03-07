# fancy_states
[![Github stars](https://img.shields.io/github/stars/loopstack33/fancy_states?logo=github)](https://github.com/loopstack33/fancy_states)
[![Pub Version](https://img.shields.io/pub/v/fancy_states?color=blue&logo=dart)](https://pub.dev/packages/fancy_states)

Fancy States is a flutter widget library, include different error states which are fully customizable and can be extended on request.
No more extra hassle for all the extra working around with different states.

## Installation
1) Add this to your packages pubspec.yaml file:
```yaml
dependencies:
  fancy_states: <latest version>
```

2) Install it
   You can install it from the command line:
```bash
$ flutter pub get
```

3) Import it
   Now in Dart code, you can use:
```dart
import 'package:fancy_states/fancy_states.dart';
```

## Recommendation
We recommend you to using the latest version.

## Using

You need to use just the following code:

### Default Type

```dart
FancyState(
state: States.internet   
),
```

### Internet State

```dart
FancyState(
state: States.internet
),
```

### Data State

```dart
FancyState(
state: States.data
),
```

### Search State

```dart
FancyState(
state: States.searc
),
```

### Server State

```dart
FancyState(
state: States.server
),
```

### Customizable State

```dart
FancyState(
state: States.internet,
image:"path_to_image",
title:"Your Title",
description:"Your Description",
imageHeight:100,
titleStyle: const TextStyle(fontFamily: 'Futura',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),
descriptionStyle: const  TextStyle(fontFamily: 'Futura',fontSize: 12,fontWeight: FontWeight.w300,color: Color(0xFF8F8E8E),
),
```
