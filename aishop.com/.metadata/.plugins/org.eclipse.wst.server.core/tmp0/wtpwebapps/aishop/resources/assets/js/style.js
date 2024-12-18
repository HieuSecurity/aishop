    
const myButton = document.getElementById('show-navbar');
const navbar_item = document.getElementById('nav-box');

myButton.addEventListener('click', function(event) {
  event.stopPropagation();
  toggleDiv();
});

function toggleDiv() {
  if (navbar_item.style.display === 'none') {
    navbar_item.style.display = 'block';
  } else {
    navbar_item.style.display = 'none';
  }
}

document.addEventListener('click', function(event) {
  if (navbar_item.style.display === 'block' && event.target !== navbar_item && event.target !== myButton) {
    navbar_item.style.display = 'none';
  }
});

    

// ------------   event slide move ---------------

$(document).ready(function(){
  $('.image-slider').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      infinite: true,
      arrows:true,
      autoplay: true,
      autoplaySpeed: 3000,
      prevArrow:"<button type='button' class='slick-prev slick-arrow'><i class='fas fa-chevron-left arrow_font'></i></button>",
      nextArrow:"<button type='button' class='slick-next slick-arrow'><i class='fas fa-chevron-right arrow_font'></i></button>",
      dots: true,
  });

  $('.imageslider').slick({
      slidesToShow: 4,
      slidesToScroll: 1,
      infinite: true,
      arrows:true,
      autoplay: true,
      autoplaySpeed: 3000,
      prevArrow:"<button type='button' class='slick-prev slick-arrow'><i class='fas fa-chevron-left arrow_font' style='color: #919191;font-size: 1.1em!important;'></i></button>",
      nextArrow:"<button type='button' class='slick-next slick-arrow'><i class='fas fa-chevron-right arrow_font' style='color: #919191;font-size: 1.1em!important;'></i></button>",
      dots: true,
  });
});

// ------------   event slide brand ---------------

// ------------   limit text ---------------

var maxLength = 120;
var elements = document.getElementsByClassName("text_limit");

for (var i = 0; i < elements.length; i++) {
  var text = elements[i].innerHTML;

  if (text.length > maxLength) {
    var trimmedText = text.substr(0, maxLength) + "...";
    elements[i].innerHTML = trimmedText;
  }
}

// ------------   products event ---------------

const navItem = document.querySelectorAll('.nav-item');
const prodListItem = document.querySelectorAll('.prod-list__item');

function toggleSidebar(item) {
    for (let i = 0; i < navItem.length; i++) {
        navItem[i].style.display = 'none';

        if (i == item) {
            if (navItem[i].style.display === 'none') {
                navItem[i].style.display = 'block';
            } else if (navItem[i].style.display === 'block') {
                navItem[i].style.display = 'none';
            }
        }
    }
}

navItem.forEach(function (item) {
    item.addEventListener('click', function onCLick(){
        toggleSidebar(index);
    });
});