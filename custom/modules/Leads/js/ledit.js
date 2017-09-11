

$( document ).ready(function() {
    
    
    

    
    $('#credit_rating').prop('readonly', true);
    $('#overdraft').prop('readonly', true);
    
    
    /*ввод только цифр*/
    $('#account_num,#child_count').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9]/g)) {
            this.value = this.value.replace(/[^0-9]/g, '');
        }
    });
    
    
    /*ввод только цифр и точки*/
    $('input[name*="volume"]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.]/g)) {
            this.value = this.value.replace(/[^0-9.]/g, '');
        }
    });
    
    
    
    /*ввод только букв и первая большая*/
    $('#placebirth').bind("change keyup input click", function() {
        if (this.value.match(/[^А-я]/g)) {
            this.value = this.value.replace(/[^А-я]/g, '');
            
        }
        var new_name = capitaliseFirstLetter($(this).val());
        
        $(this).val(new_name);
        
    });
    
    
    
    
    $("#first_name").change(function() {
        
            var new_name = capitaliseFirstLetter($("#first_name").val());
            $("#first_name").val(new_name);
           
    });
    
    $("#last_name").change(function() {
        
            var new_name = capitaliseFirstLetter($("#last_name").val());
            $("#last_name").val(new_name);
           
    });
   
   $("#first_name2").change(function() {
        
            var new_name = capitaliseFirstLetter($("#first_name2").val());
            $("#first_name2").val(new_name);
           
    });
    
    $("#last_name2").change(function() {
        
            var new_name = capitaliseFirstLetter($("#last_name2").val());
            $("#last_name2").val(new_name);
           
    });
   
   $("#patronymic").change(function() {
        
            var new_name = capitaliseFirstLetter($("#patronymic").val());
            $("#patronymic").val(new_name);
           
    });
   
   
    $("#date_birthday").change(function() {
       
            calculateAge();
    });
   
    $('#age').on('click', function () {
       
            calculateAge();
    });
 
 
    $("#bank_mfo").change(function() {
        
        $("#bank_name").val("Идет поиск.....");
        var url ="index.php?module=Leads&action=banksAction&to_pdf=1";
        var data = {};
        data.mfo = $("#bank_mfo").val();
     
        var jqxhr = $.post(url,data)
            .success(function(res){ 
                var pos = res.indexOf('<');
                var bank_name = res.substring(0,pos);
                
                if(bank_name!='not_found'){
                    $("#bank_name").val(bank_name);
                }else{
                    alert("Банк с МФО "+$("#bank_mfo").val()+" не найден в системе ");
                    $("#bank_name").val("");
                }

            })
            .error(function() { /*alert("Ошибка выполнения");*/ })
            .complete(function() {  });  
    });
    
    
    $("#bank_emitent_mfo").change(function() {
        
        $("#bank_emitent_name").val("Идет поиск.....");
        var url ="index.php?module=Leads&action=banksAction&to_pdf=1";
        var data = {};
        data.mfo = $("#bank_emitent_mfo").val();
     
        var jqxhr = $.post(url,data)
            .success(function(res){ 
                var pos = res.indexOf('<');
                var bank_name = res.substring(0,pos);
                if(bank_name!='not_found'){
                    $("#bank_emitent_name").val(bank_name);
                }else{
                    alert("Банк с МФО "+$("#bank_emitent_mfo").val()+" не найден в системе ");
                    $("#bank_emitent_name").val("");
                }

            })
            .error(function() { /*alert("Ошибка выполнения");*/ })
            .complete(function() {  });  
    });
 
 
 
 $('input[type="email"]').on('change', function(e) {
    
            alert("wow");
});
    /* $('input[type="email"]')
    $('input[type="email"]').input(function() {
            
            
            var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
            if(pattern.test($(this).val())){
                $(this).css({'border' : '1px solid #569b44'});
                
            } else {
                $(this).css({'border' : '1px solid #ff0000'});
              
            }
       
    });
 */
 
 
    function strRight(n,str){
        return str.substring(str.length-n,str.length);
    }
    
    function calculateAge(){
        var today = new Date();
        var yr = today.getFullYear();
        var dr_year = strRight(4,$("#date_birthday").val());
        if(dr_year!=0){
            $('#age').val(yr-dr_year);
        }else{
            alert("Введите дату рождения для автоматического расчета возраста");
        }   
    }
    
    function capitaliseFirstLetter(string){

        return string.charAt(0).toUpperCase() + string.slice(1);

    }
    
    
    
    
});

