

// Amount buttons
const minus = document.getElementById("btn-minus");
const plus = document.getElementById("btn-plus");
const numValue = document.getElementById("var-value");

let a = 1;

minus.addEventListener("click", () => {
    if (a > 1) a--;
    numValue.innerText = a;
});

plus.addEventListener("click", () => {
    a++;
    numValue.innerText = a;
});

// Size Buttons
const sizeBtns = document.querySelectorAll(".col-auto .size-btns-js .list-inline-item .btn");

sizeBtns.forEach(function (sizeBtn) {

    sizeBtn.addEventListener("click", () => {
        uncheckSizeBtn(sizeBtns);
        sizeBtn.classList.remove("btn-success");
        sizeBtn.classList.add("btn-secondary");
    });
})

function uncheckSizeBtn(sizeBtns) {
    sizeBtns.forEach(function (sizeBtn){
        sizeBtn.classList.remove("btn-secondary");
        sizeBtn.classList.add("btn-success");
    })
}


// Small Slider
var slideIndex = 1;
var prevIndex = slideIndex-1;
showSlider(slideIndex);

function changeSlider() {
    const translateValue = -currentSlide * 100 + '%';
    slider.style.transform = 'translateX(' + translateValue + ')';
}

function plusSlider(n) {
    prevIndex = slideIndex
    showSlider(slideIndex += n);
}

function currentSlider(n) {
  showSlider(slideIndex = n);
}

function showSlider(n) {
  var i;
  var slider = document.getElementsByClassName("carousel-item");
  if (n > slider.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slider.length}
  for (i = 0; i < slider.length; i++) {
    slider[i].style.display = "none";
  }
  slider[slideIndex-1].style.display = "flex";
  console.log(slideIndex-1);
  console.log(slideIndex-1);
  slider[slideIndex-1].classList.add("fade");
}

setInterval(function() {
    plusSlider(1)
}, 20000);

const mainImg = document.querySelector('.main-img-js');
var sliderCols = document.querySelectorAll('#multi-item-example .col-4');

sliderCols.forEach(function (col) {
    var sliderImg = col.querySelector('.card-img');
    sliderImg.addEventListener('click', () => {
        mainImg.src = sliderImg.src;
    });
});