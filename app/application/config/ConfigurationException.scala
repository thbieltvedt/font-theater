package application.config

class ConfigurationException(message: String, cause: Exception = null) extends RuntimeException(message, cause)

object ConfigurationException {
  def apply(message: String, cause: Exception = null) =
    new ConfigurationException(message, cause)
}
