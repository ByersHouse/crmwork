$(document).ready(function () {
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
});