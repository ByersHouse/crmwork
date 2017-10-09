



$( document ).ready(function() {
    //только цифры в номере карты и 16 знаков
    $("#name").attr('maxlength','16');
    $('#name').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9]/g)) {
            this.value = this.value.replace(/[^0-9]/g, '');
        }
    });



});
