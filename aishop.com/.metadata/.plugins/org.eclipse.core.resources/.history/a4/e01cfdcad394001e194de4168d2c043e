
    
const showOption = document.getElementById('showOption');
const accOption = document.getElementById('account');

showOption.addEventListener('click', function(event) {
  event.stopPropagation();
  toggleDiv();
});

function toggleDiv() {
  if (accOption.style.display === 'none') {
    accOption.style.display = 'block';
  } else {
    accOption.style.display = 'none';
  }
}

document.addEventListener('click', function(event) {
  if (accOption.style.display === 'block' && event.target !== accOption && event.target !== showOption) {
    accOption.style.display = 'none';
  }
});


    
const e_aside = document.getElementById('aside-event');

const aside = document.getElementById('aishop-top');
const aside_small = document.getElementById('aishop-top-small');

const header_style = document.getElementById('aishop-header');
const content_style = document.getElementById('aishop-content');
const footer_style = document.getElementById('aishop-footer');



e_aside.addEventListener('click', function(event) {
  event.stopPropagation();
  showAside();
});

function showAside() {
  if (aside.style.display === 'none') {
    aside.style.display = 'flex';
    aside_small.style.display = 'none';
    header_style.style.marginLeft = '16.25rem';
    footer_style.style.marginLeft = '16.25rem';
    content_style.style.marginLeft = '16.25rem';
    
    e_aside.style.transform = '180deg';
  } else {
    aside.style.display = 'none';
    aside_small.style.display = 'block';
    header_style.style.marginLeft = '4.25rem';
    footer_style.style.marginLeft = '4.25rem';
    content_style.style.marginLeft = '5.25rem';
    e_aside.style.transform = '180deg';
  }
}

document.addEventListener('click', function(event) {
  if (aside.style.display === 'block' && event.target !== aside && event.target !== e_aside) {
    aside.style.display = 'none';
  }
});

