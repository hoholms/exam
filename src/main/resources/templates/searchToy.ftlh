<#import "parts/common.ftlh" as c>
<#import "parts/pager.ftlh" as p>
<#import "parts/toyCard.ftlh" as tc>

<@c.page>
    <h1>Поиск игрушек</h1>
    <hr/>

    <form method="get" action="/toy/search" class="row g-3 p-4 pt-2 my-4 mx-3 border rounded-3">
        <div class="col-md-4">
            <div class="form-floating overflow-hidden">
                <input type="text" class="form-control" id="toyName" name="toyName" placeholder="Название игрушки"
                       value="${searchToyDto.toyName!}">
                <label for="toyName">Название игрушки</label>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-floating overflow-hidden">
                <input type="text" class="form-control" id="material" name="material" placeholder="Материал"
                       value="${searchToyDto.material!}">
                <label for="material">Материал</label>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-floating overflow-hidden">
                <select class="form-select" id="category" name="categoryId">
                    <option value="">Все категории</option>
                    <#list categories as category>
                        <option value="${category.id}"
                                <#if (searchToyDto?? && searchToyDto.categoryId?? && searchToyDto.categoryId?number == category.id)>selected</#if>>${category.categoryName}</option>
                    </#list>
                </select>
                <label for="category">Категория</label>
            </div>
        </div>
        <div class="col-md-4">
            <div class="input-group">
                <div class="form-floating overflow-hidden">
                    <input type="number" class="form-control" id="minSize" name="minSize" placeholder="Мин. размер"
                           value="${searchToyDto.minSize!}">
                    <label for="minSize">Мин. размер</label>
                </div>
                <div class="form-floating overflow-hidden">
                    <input type="number" class="form-control" id="maxSize" name="maxSize" placeholder="Макс. размер"
                           value="${searchToyDto.maxSize!}">
                    <label for="maxSize">Макс. размер</label>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="input-group">
                <div class="form-floating overflow-hidden">
                    <input type="number" step="0.01" class="form-control" id="minPrice" name="minPrice"
                           placeholder="Мин. цена" value="${searchToyDto.minPrice!}">
                    <label for="minPrice">Мин. цена</label>
                </div>
                <div class="form-floating overflow-hidden">
                    <input type="number" step="0.01" class="form-control" id="maxPrice" name="maxPrice"
                           placeholder="Макс. цена" value="${searchToyDto.maxPrice!}">
                    <label for="maxPrice">Макс. цена</label>
                </div>
            </div>
        </div>
        <div class="col-md-2 align-self-end flex-fill align-self-center">
            <button type="submit" class="btn btn-lg btn-primary w-100">Поиск</button>
        </div>
    </form>

    <#if toys.content[0]??>
        <div class="container-fluid my-4">
            <div class="row">
                <#list toys.content as toy>
                    <@tc.toyCard toy />
                </#list>
            </div>
        </div>
    </#if>
    <@p.pager springMacroRequestContext.requestUri!'' toys springMacroRequestContext.queryString!'' />
</@c.page>
