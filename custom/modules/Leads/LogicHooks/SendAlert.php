<?php

class LeadHooks{
    
    
    
    public function sendAlert($bean,$events,$arguments){
        sleep(5);
        $lead = BeanFactory::getBean('Leads', $bean->fetched_row['id']);
        
       // var_dump("<pre>",$lead,"</pre>");
     //  exit;
        if($lead->assigned_user_id){
            
            $seedAlert = new Alert();
            $seedAlert->name = "Предварительный контакт ".$lead->first_name." ".$lead->last_name."";
            $seedAlert->description = "Вам назначена задача";
            $seedAlert->assigned_user_id = $lead->assigned_user_id;
            $seedAlert->message_to_assigned = $lead->message_to_assigned;
            $seedAlert->is_read = 0 ;
            $seedAlert->type = "info" ;
            $seedAlert->target_module = "Lead";
            $seedAlert->url_redirect = "index.php?action=DetailView&module=Leads&record=".$bean->fetched_row['id']."&return_module=Leads&return_action=DetailView";
            $seedAlert->save();
            
        }
        
    }
    
   
    
    
}
