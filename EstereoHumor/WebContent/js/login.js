
	$(document).ready(function()
	{
		var images = $('.slider');
	    current = 0;
	    images.hide();
	    Rotator();
	    function Rotator() {
	    	
	        $(images[current]).show('Drop',{direction:"left"},1000).delay(1000).hide('Drop',{direction:"right"},1000);
	        $(images[current]).queue(function () {
	            current = current < images.length - 1 ? current + 1 : 0;
	            Rotator();
	            $(this).dequeue();
	        });
	    }
	});