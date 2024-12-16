
const categoryList = document.querySelectorAll('.list_items');
const listTitles = document.querySelectorAll('.list_title');

function toggleSidebar(iconTitle) {
    for (let i = 0; i < categoryList.length; i++) {
        categoryList[i].style.display = 'none';

        if (i == iconTitle) {
            if (categoryList[i].style.display === 'none') {
                categoryList[i].style.display = 'block';
            } else if (categoryList[i].style.display === 'block') {
                categoryList[i].style.display = 'none';
            }
        }
    }
}

listTitles.forEach(function (title, index) {
    title.addEventListener('click', function onCLick(){
        toggleSidebar(index);
    });
});