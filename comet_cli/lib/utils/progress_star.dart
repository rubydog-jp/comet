import 'dart:async';
import 'dart:io';

/// message for stop progress
const _defaultStopMessage = '---* Completed.';

/// A custom progress indicator
class ProgressStar {
  static const _items = [
    '[        ]',
    '[*       ]',
    '[-*      ]',
    '[--*     ]',
    '[---*    ]',
    '[ ---*   ]',
    '[  ---*  ]',
    '[   ---* ]',
    '[    ---*]',
    '[     ---]',
    '[      --]',
    '[       -]',
  ];

  static int _index = 0;
  static Timer? _timer;
  static String _msg = 'comet running..';

  static void _incrementIndex() {
    _index = (_index + 1) % _items.length;
  }

  static void start(String msg) {
    _msg = msg;
    clean();
    _timer = Timer.periodic(
      Duration(milliseconds: 100),
      (timer) {
        stdout.write('\r${_items[_index]} $_msg');
        _incrementIndex();
      },
    );
  }

  static void message(String msg) {
    _msg = msg;
  }

  static void blink(String msg) {
    _msg = msg;
    clean();
    _BlinkStar.start();
  }

  static void clean() {
    _timer?.cancel();
    _BlinkStar.stop();
  }

  static void stop({
    String? msg,
  }) {
    print(msg ?? _defaultStopMessage);
    _timer?.cancel();
    _BlinkStar.stop();
  }
}

/// An other custom progress indicator
class _BlinkStar {
  static const _items = [
    '[ * * *  ]',
    '[        ]',
    '[  * * * ]',
    '[        ]',
  ];
  static int _index = 0;
  static Timer? _timer;

  static void _incrementIndex() {
    _index = (_index + 1) % _items.length;
  }

  static void start() {
    _timer?.cancel();
    _timer = Timer.periodic(
      Duration(milliseconds: 1000),
      (timer) {
        stdout.write('\r${_items[_index]} ${ProgressStar._msg}');
        _incrementIndex();
      },
    );
  }

  static void stop() {
    _timer?.cancel();
  }
}
