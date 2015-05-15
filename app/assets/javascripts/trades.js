// var API_BASE = '/api/items'

// $(document).ready(function(){
// 	var json = $.ajax({
// 		datatype: 'json',
// 		type: 'GET',
// 		url: API_BASE,
// 		data: {}
// 	});

// 	console.log(json);

// 	json.done(function(data){
// 		var i;
// 		for(i = 0; i < data.length; i += 1){
// 			console.log(data[i]);
// 			addItem($('#items-list'), data[i]);
// 		}
// 	});
// 	json.fail(function(data){
// 		$('#items').html("<h2>FAILED TO LOAD</h2>");
// 	});

// 	function addItem(jqElem, data){
// 		console.log(jqElem);
// 		console.log(data);
// 		var itemName = data.item_name;
// 		var itemDescription = data.item_description;
// 		var user = data.user;

// 		var listItem = "<div class='ui header'>"; 
// 		listItem += "<p>" + user + " is offering a " + itemName + " for trade! Sign up now!</p></div>"

// 		jqElem.append('<li style=" list-style-type:none">' + listItem + '</li>');
// 		console.log(listItem)
// 	}
// });