var API_BASE = "/api/items";

$(document).on('page:load',function(){
	var json = $.ajax({
		datatype: 'json',
		type: 'GET',
		url: API_BASE,
		data: {}
	});

	console.log(json);

	json.done(function(data){
		var i;
		for(i = 0; i < 8; i += 1){
			console.log(data[i]);
			addItem($('#top1'), data[i]);
      addItem($('#top2'), data[i]);
		}
	});

	json.fail(function(data){
		$('#top1').html("<h2>FAILED TO LOAD</h2>");
    $('#top2').html("<h2>FAILED TO LOAD</h2>");
	});

  // json.done(function(data){
  //   var i;
  //   for(i = 0; i < 8; i += 1){
  //     console.log(data[i]);
  //     addItem($('#top2'), data[i]);
  //   }
  // });

  // json.fail(function(data){
  //   $('#top2').html("<h2>FAILED TO LOAD</h2>");
  // });

	function addItem(jqElem, data){
		console.log(jqElem);
		console.log(data);
		var itemImage = data.item_image;
    var userImage = data.user_image;

		var listItem = "<div class='two wide column'>"; 
		listItem += "<div class='ui small images'><img class='ui image' src='" + itemImage + "'></div></div>";

		jqElem.append(listItem);
		console.log(listItem);
	}
})


