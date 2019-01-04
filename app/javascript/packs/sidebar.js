const icon = document.querySelector('.SideBurgerIcon');
const sidebar = document.querySelector('.sidebar');
const expandIcon = document.querySelector('.Icon');
const arrows = document.querySelectorAll('.ArrowDownMiniIcon');
const sidebarLinks = document.querySelectorAll('.sidebarLinks li')



function collapse(e) {
  e.preventDefault();
  sidebar.classList.add('is-collapsed');
  expandIcon.classList.toggle('Icon-hide'); 
}

function expand(e) {  
  e.preventDefault();
  console.log(e);
  sidebar.classList.remove('is-collapsed');
  this.classList.toggle('Icon-hide');
  
}

function showArrows(e) {
  if(arrows){
    arrows.forEach(arrow => arrow.classList.add('show-arrow'));
  }
}

function hideArrows(e) {
  console.log(e);
  if(arrows){
    arrows.forEach(arrow => arrow.classList.remove('show-arrow'));
  }
}

function is_selected(e) {
  e.preventDefault();
  const currentSelected = document.querySelector('.selected');  
  currentSelected.classList.remove('selected');
  const link_icon = this.querySelector('i');
  // i.style.color = 'white';
  // this.style.backgroundColor = 'rgba(255,255,255,0.2)';
  this.classList.add('selected');
}

if(icon){
  icon.addEventListener("click", collapse);
}
if(expandIcon){
  expandIcon.addEventListener("click", expand);
}

if(sidebar){
  sidebar.addEventListener("mouseover", showArrows);
  sidebar.addEventListener("mouseout", hideArrows);
}

sidebarLinks.forEach(link => link.addEventListener("click", is_selected));