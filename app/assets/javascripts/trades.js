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
		for(i = 0; i < data.length; i += 1){
			console.log(data[i]);
			addItem($('#bottom'), data[i]);
		}
	});
	json.fail(function(data){
		$('#bottom').html("<h2>FAILED TO LOAD</h2>");
	});

	function addItem(jqElem, data){
		console.log(jqElem);
		console.log(data);
		var itemImage = data.item_image;
    var userImage = data.user_image;


		var listItem = "<div class='two wide column'>"; 
		listItem += "<img src=' " + itemImage + "'></div>";

		jqElem.append(listItem);
		console.log(listItem);
	}
});