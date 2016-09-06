$(function(){
  $('#find-nearby').on('click', function(){
    if ("geolocation" in navigator {
      navigator.geolocation.getCurrentPosition(success, fail);
    } else {
      alert("geolocation not supported on your current browser");
    })
  })
})

function success(position){
  var lat   = position.coords.latitude;
  var long  = position.coords.longitude;
  $.ajax({
    url: '/restaurants',
    method: 'get',
    dataType: '',
    data: '',
  })
}

function fail(error){
  console.log("something went wrong" + error.message);
}
