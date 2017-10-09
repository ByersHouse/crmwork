<?php

class CasesHooks{
    
    
    
    public function sendAlert($bean,$events,$arguments){
        sleep(5);
        $case = BeanFactory::getBean('Cases', $bean->id);
 
        if($case->assigned_user_id){
            
            $seedAlert = new Alert();
            $seedAlert->name = "Обращение ".$case->name;
            $seedAlert->description = "Вам назначено новое обращение";
            $seedAlert->assigned_user_id = $case->assigned_user_id;
            $seedAlert->message_to_assigned = $case->message_to_assigned;
            $seedAlert->is_read = 0 ;
            $seedAlert->type = "info" ;
            $seedAlert->target_module = "Case";
            $seedAlert->url_redirect = "index.php?action=DetailView&module=Cases&record=".$bean->id."&return_module=Cases&return_action=DetailView";
            $seedAlert->save();
            
        }

        
    }
    
   
    
    
}
