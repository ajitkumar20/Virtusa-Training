CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `class_description` text NOT NULL,
  `class_size` int(11) NOT NULL,
  `class_room` varchar(255) NOT NULL,
  `class_time` time NOT NULL,
  `class_date` date NOT NULL,
  PRIMARY KEY (`class_id`)
)

--insert a new record inside product table

Product product = new Product();
product.setName("");
product.setManufacturer("");

productRepository.save(product);

--update an existing record in product table

Product product = productRepository.findOne(1L);
product.setName("");
product.setManufacturer("");

productRepository.save(product);

--delete an existing record from product table

Product product = productRepository.findOne(1L);
productRepository.delete(product);

--execute an query and return the manufacturer list for a given product name

List<Product> products = productRepository.findByName("");

for (Product product : products) {
    System.out.println(product.getManufacturer());
}