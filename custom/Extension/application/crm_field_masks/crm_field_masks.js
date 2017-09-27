var crm_field_masks = new CRMFieldMasks();
var operators = {
	'093': 'LifeCell',
    '063': 'LifeCell',
    '073': 'LifeCell',

    '050': 'Vodafone',
    '066': 'Vodafone',
    '095': 'Vodafone',
    '099': 'Vodafone',

    '039': 'Kyivstar',
    '067': 'Kyivstar',
    '096': 'Kyivstar',
    '097': 'Kyivstar',
    '098': 'Kyivstar',

    '091': '3Mob(Utel)',

    '092': 'PeopleNet',

    '094': 'Intertelecom',
	'unknown': 'Неизвестный оператор'

};
function check (num) {
    for(var key in operators){
        if(key == num){

            $('#operator').attr('value', operators[key]);
            $('#operator').attr('readonly','readonly');

            return true;
        }

    }
}


$(document).ready(function(){
	//	alert('here');

   // a way to check to make sure selector is working
	crm_field_masks.selector_check();
	crm_field_masks.run();

    $('#phone_contact').keyup(function () {
        $('#operator').attr('value', operators['unknown']);
        var a = $('input[name*="phone"]').val();
        a = a[4] + a[5] + a[6];
        console.log(a);
        check(a);
    })


	//	alert('there');
});

function CRMFieldMasks()
{
	that        = this;
	this.debug  = false;
	this.cache  = [];

	this.dependency = 'custom/Extension/application/crm_field_masks/jquery.inputmask.bundle.min.js';

	this.cache_and_log = function(name, value)
	{
		if(this.debug)
		{	this.cache[name] = value;
			console.log('CRMMASKS - ' + name + ' = ' + value );
		}
	}

	this.selector_check = function()
	{
		if(this.debug)
		{	this.cache_and_log('selector_check - begin', true );
			$('input[name*="phone"]').css('color','#00f !important');  
			this.cache_and_log('selector_check - end', true );
		}
	}

	this.run = function()
	{
		this.cache_and_log('run - begin', true );
		dependency = this.dependency;

		// load dependencies
		$.getScript(dependency)
			.done(function( script, textStatus )
			{
				that.apply_masks();
				that.cache_and_log( 'dependency loaded', dependency );
			})
			.fail(function( jqxhr, settings, exception )
			{
				that.cache_and_log( 'dependency failed to load', dependency );
			});

		this.cache_and_log('run - end', true );
	}

	this.apply_masks = function()
	{
		this.cache_and_log('apply_masks - begin', true );

		$('input[name*="phone"]').inputmask({"mask": "[+38]([0]99) 999-99-99"}); //specifying options



		$('input[name*="fax"]').inputmask({"mask": "[+38]([0]99) 999-99-99"}); //specifying options
                $('input[name*="card_num"]').inputmask({"mask": "9999 9999 9999 9999",clearMaskOnLostFocus: true,
                        onincomplete: function(){
                             //alert("Пожалуйста, укажите 16 цифр в формате XXXX XXXX XXXX XXXX");
                             //$(this).css({'border' : '1px solid #ff0000'});
                             //$(':input[type="submit"]').prop('disabled', true);
                        }}
                    );
                $('input[name*="ukrpasport_nom"]').inputmask({"mask": "[AA]999999"});
                $('input[name*="date"]').inputmask({"mask": "99/99/9999"});
                $('input[name*="mfo"]').inputmask({"mask": "999999",clearMaskOnLostFocus: true});
                $('input[name*="inn"]').inputmask({"mask": "9999999999",clearMaskOnLostFocus: true,
                   onincomplete: function(){
                       
                            // $(this).css({'border' : '1px solid #ff0000'});
                             //$(':input[type="submit"]').prop('disabled', true);
                        },
                    complete: function(){
                          
                            // $(this).css({'border' : '1px solid #569b44'});
                             //$(':input[type="submit"]').prop('disabled', true);
                    }
            
                });
                
		this.cache_and_log('apply_masks - end', true );
	}

};
