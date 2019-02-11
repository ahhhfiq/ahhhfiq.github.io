function move(section) {
  event.preventDefault();
  $("html, body").animate(
    {
      scrollTop: $(section).offset().top
    },
    300
  );
}

function clickError() {
  alert('Link not available');
}