<#import "parts/common.ftlh" as c>
<#import "parts/toyForm.ftlh" as tf>

<@c.page>
    <h1>Добавить игрушку</h1>
    <hr/>
    <@tf.toyForm toy categories />
</@c.page>
