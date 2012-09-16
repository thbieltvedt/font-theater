package application.logging

object Logger {

  def debug(message: String) {
    doLog("DEBUG", message)
  }

  def info(message: String) {
    doLog("INFO", message)
  }
  
  def warn(message: String, throwable: Throwable = null) {
    doLog("WARN", message, throwable)
  }
  
  def error(message: String, throwable: Throwable = null) {
    doLog("ERROR", message, throwable)
  }
  
  def fatal(message: String, throwable: Throwable = null) {
    doLog("FATAL", message, throwable)
  }
  
  private def doLog(level: String, message: String, throwable: Throwable = null) {
    if (message != null && !message.isEmpty()) println("[" + level + "] " + message)
    if (throwable != null) throwable.printStackTrace()
  }

}