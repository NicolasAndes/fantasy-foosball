// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(function(){
	var g1_ht_sc, g1_at_sc, g2_ht_sc, g2_at_sc  = 0;
	var g1_winner, g2_winner = "";

  	$("#g1_ht_sc").change(function(){
        g1_ht_sc = parseInt($(this).val());

        check_game_winner(g1_ht_sc, g1_at_sc, '#g1');
    });
    $("#g1_at_sc").change(function(){
        g1_at_sc = parseInt($(this).val());

        check_game_winner(g1_ht_sc, g1_at_sc, '#g1');
    });

    $("#g2_ht_sc").change(function(){
        g2_ht_sc = parseInt($(this).val());

        check_game_winner(g2_ht_sc, g2_at_sc, '#g2');
    });
    $("#g2_at_sc").change(function(){
        g2_at_sc = parseInt($(this).val());

        check_game_winner(g2_ht_sc, g2_at_sc, '#g2');
    });

    function check_game_winner(ht, at, pre) {
    	if (ht > at && at !=0) {
	    	$(pre+"_winner").text("Home Team Wins").trigger("change");
	    	g1_winner = $("#g1_winner").text();
	    	g2_winner = $("#g2_winner").text();

	    } else if (ht < at && at !=0) {
	    	$(pre+"_winner").text("Away Team Wins").trigger("change");
	    	g1_winner = $("#g1_winner").text();
	    	g2_winner = $("#g2_winner").text();
	    	
	    } else if (ht == at) {
	    	$(pre+"_winner").text("Both teams can't be the winner!");
	    }
    }

    $(document).on('change', '#g2_winner', function() {
	  if( g1_winner == g2_winner) {
	    	$("#g3").removeClass("hide");
	    } else {
	    	$("#g3").addClass("hide");
	    }
	});

});