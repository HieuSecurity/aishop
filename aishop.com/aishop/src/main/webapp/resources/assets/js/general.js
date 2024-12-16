

var maxLength = 18;
var elements = document.getElementsByClassName("text_limit");

for (var i = 0; i < elements.length; i++) {
  var text = elements[i].innerHTML;

  if (text.length > maxLength) {
    var trimmedText = text.substr(0, maxLength) + "...";
    elements[i].innerHTML = trimmedText;
  }
}

var option_click = document.getElementById("show-option-dashboard");
var option_dashboard = document.getElementById("dashboard-option");
var arrow_ronate = document.getElementById("arrow-ronate-dashboard");

option_click.addEventListener('click', function onCLick(){
  if(option_dashboard.style.display === 'none'){
    option_dashboard.style.display = 'block';
    arrow_ronate.style.transform = 'scaleY(-1)';
  }
  else{
    option_dashboard.style.display = 'none';
    arrow_ronate.style.transform = 'scaleY(1)';
  }
});

var option_click_1 = document.getElementById("show-option-product");
var option_product = document.getElementById("product-option");
var arrow_ronate_1 = document.getElementById("arrow-ronate-product");

option_click_1.addEventListener('click', function onCLick(){
  if(option_product.style.display === 'none'){
    option_product.style.display = 'block';
    arrow_ronate_1.style.transform = 'scaleY(-1)';
  }
  else{
    option_product.style.display = 'none';
    arrow_ronate_1.style.transform = 'scaleY(1)';
  }
});

var option_click_2 = document.getElementById("show-option-order");
var option_order = document.getElementById("order-option");
var arrow_ronate_2 = document.getElementById("arrow-ronate-order");

option_click_2.addEventListener('click', function onCLick(){
  if(option_order.style.display === 'none'){
    option_order.style.display = 'block';
    arrow_ronate_2.style.transform = 'scaleY(-1)';
  }
  else{
    option_order.style.display = 'none';
    arrow_ronate_2.style.transform = 'scaleY(1)';
  }
});

var option_click_3 = document.getElementById("show-option-auth");
var option_auth = document.getElementById("auth-option");
var arrow_ronate_3 = document.getElementById("arrow-ronate-auth");

option_click_3.addEventListener('click', function onCLick(){
  if(option_auth.style.display === 'none'){
    option_auth.style.display = 'block';
    arrow_ronate_3.style.transform = 'scaleY(-1)';
  }
  else{
    option_auth.style.display = 'none';
    arrow_ronate_3.style.transform = 'scaleY(1)';
  }
});