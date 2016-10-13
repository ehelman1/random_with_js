
var el = '<div class="form-group">' + 
 '<label for="Name" class="col-sm-4 control-label"></label>' +
  '<div class="col-sm-8 input">' +
   '<input type="text" class="form-control" id="name" name="name[]" placeholder="Enter name" required="required">' +
    '</div>' +
'</div>';

$('#numNames').on('input', function(e) {
  var numSelected = Number($(this).val());
  appendControls(numSelected);
});

function appendControls(num) {
  $('#elcontainer').empty();
  for (var i=0; i<num; i++) {
     $('#elcontainer').append(el);
  } 
}
