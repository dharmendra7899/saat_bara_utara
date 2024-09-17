abstract class BuildFlavor {
  BuildFlavor();
}

class Prod extends BuildFlavor {
  static const appTitle = "7/12";
  static const baseUrl = "https://sadhan-api.com/api/v1";
}

class Dev extends BuildFlavor {
  static const appTitle = "7/12 Dev";
  static const baseUrl = "https://sadhan-api.com/api/v1";
}

class Test extends BuildFlavor {
  static const appTitle = "7/12 Test";
  static const baseUrl = "https://sadhan-api.com/api/v1";
}
