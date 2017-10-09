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

    loadPhone();
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
    });


	//	alert('there');
    // View relationships in leads
    if($("#LBL_CONTACT_INFORMATION").length && $("#list_subpanel_leads_bh_autotransport_1".length) && $('.machines').length == 0) {

        $('#list_subpanel_leads_bh_autotransport_1 > .table-responsive').clone()
			.removeClass()
			.addClass('machines detail view')
            .prepend('<caption>Автомобили</caption>')
            .insertBefore($("#detailpanel_2"));
        $('.machines').css('width', '100%');
        $('.machines').css('margin-top', '15px');
        $('.machines a.listViewThLinkS1').css('font-size', '10px');
        $('.machines a.listViewThLinkS1').removeAttr('href');
        $('.machines td').css('text-align', 'center');
        $('.machines .clickMenu').remove();
        $('.machines img').remove();

        $('#list_subpanel_activities > .table-responsive').clone()
            .removeClass()
            .addClass('activities detail view')
			.prepend('<caption>Последнее событие</caption>')
            .insertBefore($("#detailpanel_1"));

        $('.activities tbody tr:not(:last)').remove();
        $('.activities').css('width', '100%');
        $('.activities').css('margin-top', '15px');
        $('.activities a.listViewThLinkS1').css('font-size', '10px');
        $('.activities a.listViewThLinkS1').removeAttr('href');
        $('.activities .clickMenu').remove();
        $('.activities img').remove();
        $('.activities td').css('text-align', 'center');

        $('#tabcontent0 caption').css('color', 'red');
        $('#tabcontent0 caption').css('font-weight', 'bolder');
    }
    // View relationships in Marketing Company
    if($("#bh_marketing_company_detailview_tabs").length && $("#detailpanel_1").length) {
      if($('.product').length > 0){
          $('.product').remove();
      }
       var cust_panels = {
           'list_subpanel_bh_marketing_company_bh_campaine_products_1': 'Продукты компании',
           'list_subpanel_bh_marketing_company_bh_channels_impact_1': 'Каналы воздействия',
           'list_subpanel_bh_marketing_company_bh_marketing_directorate_1': 'Ректорат маркетингового воздейтвия',
           'list_subpanel_bh_marketing_company_bh_marketing_response_1': 'Отклик на маркетинговую компанию',
       };

        for(var key in cust_panels) {
            $('#'+ key +' > .table-responsive').clone()
                .removeClass()
                .addClass('product detail view')
                .prepend('<caption>'+cust_panels[key]+'</caption>')
                .insertAfter($("#detailpanel_1"));



        }
        $('.product').css('width', '100%');
        $('.product').css('margin-top', '15px');
        $('.product a.listViewThLinkS1').css('font-size', '10px');
        $('.product a.listViewThLinkS1').removeAttr('href');
        $('.product td').css('text-align', 'center');
        $('.product .clickMenu').remove();
        $('.product img').remove();
        $('#content caption').css('color', 'red');
        $('#content caption').css('font-weight', 'bolder');
    }
});
/*
function loadPhone() {

   // $('#popup').position({ my: 'left top', at: 'left bottom', of: $('a').first() });



    $.ajax({
        url:"/custom/extension/application/crm_field_masks/phone/index.php",
        cache: false,
        type: "GET",
        success: function(data){
            if(data !== 'false') {
                $('body').append('<div id="popup" style="width:250px; height:400px; margin-top: -450px; position: fixed; right: 0px;"></div>');
                $("#popup").append(data);
            }
        }

    });
}
*/



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

		//$('input[name*="phone"]').inputmask({"mask": "[+38]([0]99) 999-99-99"}); //specifying options



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
