<?php

class CasesHooks{
    
    
    
    public function sendAlert($bean,$events,$arguments){
        sleep(5);
        $case = BeanFactory::getBean('Cases', $bean->fetched_row['id']);
      
        
        if($case->assigned_user_id){
            
            $seedAlert = new Alert();
            $seedAlert->name = "Предварительный контакт '".$case->first_name." ".$case->last_name."'";
            $seedAlert->description = "Вам назначена новое обращение";
            $seedAlert->assigned_user_id = $case->assigned_user_id;
            $seedAlert->message_to_assigned = $case->message_to_assigned;
            $seedAlert->is_read = 0 ;
            $seedAlert->type = "info" ;
            $seedAlert->target_module = "Lead";
            $seedAlert->url_redirect = "index.php?action=DetailView&module=Cases&record=".$bean->fetched_row['id']."&return_module=Cases&return_action=DetailView";
            $seedAlert->save();
            
        }

        
    }
    
   
    
    
}
