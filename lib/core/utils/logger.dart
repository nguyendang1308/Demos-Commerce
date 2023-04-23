class Logger {
  static LogMode _logMode = LogMode.debug;

  static void init(LogMode mode) {
    Logger._logMode = mode;
  }

  static void log(dynamic data, {StackTrace? stackTrace}) {
    if (_logMode == LogMode.debug) {
      //If you want to write your log to your database , you can't code here
      print("Error: $data$stackTrace");
    }
  }
}

enum LogMode { debug, live }
