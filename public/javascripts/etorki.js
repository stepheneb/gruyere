$(document).ready(function () {
	init();
});

function init(){
  $('.expandable .body').hide();
  $('.expandable .title').click(toggleHandler);
}

function toggleHandler (evt) {
  toggleBody($(evt.target));
}

function toggleBody (title) {
  title.siblings('.body').toggle();
}
