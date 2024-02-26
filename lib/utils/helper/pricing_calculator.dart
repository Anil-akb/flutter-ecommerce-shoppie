class SPricingCalculator {
  // calculate price based on tax and shipping

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = geTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingcost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingcost(location);
    return shippingCost.toStringAsFixed(2);
  }

// calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = geTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double geTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingcost(String location) {
    return 5.00;
  }
}
