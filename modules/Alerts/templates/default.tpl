{$Flash}

{foreach from=$Results item=result}
    <div class="alert alert-{if $result->type != null}{$result->type}{else}info{/if} alert-dismissible module-alert" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="Alerts.prototype.markAsRead('{$result->id}');"><span aria-hidden="true">&times;</span></button>
        <h4 class="alert-header">
        {if $result->url_redirect != null && !($result->url_redirect|strstr:"fake_") }
        <a class="alert-link text-{if $result->type != null}{$result->type}{else}info{/if}" href="index.php?module=Alerts&action=redirect&record={$result->id}">
        {/if}
            {if $result->target_module != null }
                <img src="index.php?entryPoint=getImage&themeName=SuiteR+&imageName={$result->target_module}s.gif"/>
                <strong class="text-{if $result->type != null}{$result->type}{else}info{/if}">{$result->target_module}</strong>
            {else}
                <strong class="text-{if $result->type != null}{$result->type}{else}info{/if}">Alert</strong>
            {/if}
        {if $result->url_redirect != null }
        </a>
        {/if}
        </h4>
        <p class="alert-body">
            <h3>{$result->description|nl2br}</h3>
            <hr>
            {$result->name|nl2br}<br/>
            {if $result->message_to_assigned != null }
            <hr>
            <b>Сообщение:</b><br/>
            {$result->message_to_assigned|nl2br}
            {/if}
        </p>
    </div>
{/foreach}

