<#import "parts/common.ftlh" as c>
<#import "parts/pager.ftlh" as p>
<#import "parts/toyCard.ftlh" as tc>

<@c.page>
    <h1>Поиск игрушек</h1>
    <hr/>

    <#if toys.content[0]??>
        <div class="container-fluid my-4">
            <div class="row">
                <#list toys.content as toy>
                    <@tc.toyCard toy />
                </#list>
            </div>
        </div>
    </#if>
    <@p.pager "/toy/search" toys/>
</@c.page>
