var API_BASE = '/api/items';

$(document).on('page:load', function(){

    var json = $.ajax({
        datatype: 'json',
        type: 'GET',
        url: API_BASE,
        data: {}
    });

    // console.log(json);

// Random function
   function randomNumber(arr){
   	 return arr[Math.floor(Math.random()*arr.length)];
	};

	var randNum = randomNumber(json);
// End random function

    json.done(function(data){
        var i;
        for(i = 0; i < 4; i += 1){
            addItem($('#bottom'), data[i]);
        }
    });
    json.fail(function(data){
        $('#bottom').html("<h2>FAILED TO LOAD</h2>");
    });
    json.done(function(data){
	    var i;
	    for(i = 3; i >= 0; i = i - 1){
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
        listItem += "<img class='ui medium image' src=' " + itemImage + "'></div>";

        jqElem.append(listItem);
        console.log(listItem);
    }

});