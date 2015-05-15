var API_BASE = '/api/items'

$(document).ready(function(){
	var json = $.ajax({
		datatype: 'json',
		type: 'GET',
		url: API_BASE,
		data: {}
	});

	console.log(json);

	json.done(function(data){
		var i;
		for(i = 0; i < 4; i += 1){
			console.log(data[i]);
			addItem($('#bottom'), data[i]);
		}
	});
	json.fail(function(data){
		$('#bottom').html("<h2>FAILED TO LOAD</h2>");
	});

  json.done(function(data){
    var i;
    for(i = 0; i < 4; i += 1){
      console.log(data[i]);
      addItem($('#top'), data[i]);
    }
  });
  json.fail(function(data){
    $('#top').html("<h2>FAILED TO LOAD</h2>");
  });

	function addItem(jqElem, data){
		console.log(jqElem);
		console.log(data);
		var itemImage = data.item_image;
    var userImage = data.user_image;

		var listItem = "<div class='four wide column'>"; 
		listItem += "<div class='ui medium images'><img class='ui bottom aligned medium image' src='" + itemImage + "'></div></div>";

		jqElem.append(listItem);
		console.log(listItem);
	}
});


