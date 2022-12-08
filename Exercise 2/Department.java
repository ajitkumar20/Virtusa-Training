public interface TaxCalculator {
    double calculateTax();
  }
  
  public class HRDepartmentTaxCalculator implements TaxCalculator {
    public double calculateTax() {
      // Calculate tax for the HR department
      
    }
  }
  
  public class HumanityDepartmentTaxCalculator implements TaxCalculator {
    public double calculateTax() {
      // Calculate tax for the Humanity department
    }
  }
  
  public class LogisticDepartmentTaxCalculator implements TaxCalculator {
    public double calculateTax() {
      // Calculate tax for the Logistic department
    }
  }
  
  public class TaxCalculatorContext {
    private TaxCalculator taxCalculator;
  
    public TaxCalculatorContext(TaxCalculator taxCalculator) {
      this.taxCalculator = taxCalculator;
    }
  
    public double calculateTax() {
      return taxCalculator.calculateTax();
    }
  }
  
  public class Department {
    public static void main(String[] args) {
      TaxCalculatorContext context = new TaxCalculatorContext(new HRDepartmentTaxCalculator());
      double hrDepartmentTax = context.calculateTax();
  
      context = new TaxCalculatorContext(new HumanityDepartmentTaxCalculator());
      double humanityDepartmentTax = context.calculateTax();
  
      context = new TaxCalculatorContext(new LogisticDepartmentTaxCalculator());
      double logisticDepartmentTax = context.calculateTax();
    }
  }
  