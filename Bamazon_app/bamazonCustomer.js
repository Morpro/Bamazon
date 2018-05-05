var mysql = require('mysql');
var inquirer = require('inquirer');


var connection = mysql.createConnection({
    host: "localhost",
    port: 8889,
    user: "root",
    password: "root",
    database: "bamazon"
})

connection.connect(function(err) {
    if (err) throw err;
    displayProducts();
})

var displayProducts = function() {
  var query = 'SELECT * FROM Products'
  connection.query(query, function(err, res) {
      for (var i = 0; i < res.length; i++) {
          console.log("Item ID: " + res[i].id + " || Product: " + res[i].productNAME + " || Department: " + res[i].departmentName + " || Price: " + res[i].price + " || Stock: " + res[i].stockQuantity);
      }
      shoppingCart();
    })
};

var shoppingCart = function() {
    inquirer.prompt([{
        name: "ProductID",
        type: "input",
        message: "What is the ID of the product you would like to purchase?",
        
    }, {
        name: "Quantity",
        type: "input",
        message: "How many would you like to buy?",
        validate: function(value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
    }]).then(function(answer) {

     var query = 'SELECT * FROM Products WHERE itemID=Products' + answer.Quantity;
        connection.query(query, function(err, res) {
          if (answer.Quantity <= res) {
            for (var i = 0; i < res.length; i++) {
                console.log("We currently have " + res[i].stockQuantity + " " + res[i].productName + ".");
                console.log("Thank you for your for your purchase! Your order of "+ res[i].stockQuantity + " " + res[i].productName + " is now being processed.");
              }
            } else {
              console.log("Not enough of this product in stock.");
            }
            displayProducts();
        })
    })
};