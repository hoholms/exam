<#macro toyCard toy>
    <div class="card-wrapper col-md-6 col-lg-4 mb-3">
        <div class="card h-100 rounded-4 shadow-sm">
            <#if toy.photo??>
                <img src="/images/${toy.photo}" class="card-img-top object-fit-cover rounded-top-4"
                     alt="${toy.toyName}">
            </#if>
            <div class="card-body d-flex flex-column">
                <h5 class="card-title text-center"><a href="/toy/edit/${toy.id}"
                                                      class="link-body-emphasis link-underline link-underline-opacity-0 link-underline-opacity-75-hover">${toy.toyName}</a>
                </h5>
                <p class="card-text"><strong>Размер: </strong>${toy.size}</p>
                <p class="card-text"><strong>Материал: </strong>${toy.material}</p>
                <p class="card-text"><strong>Категория: </strong><a
                            href="/category/edit/${toy.category.id}"
                            class="link-body-emphasis link-underline link-underline-opacity-0 link-underline-opacity-75-hover">${toy.category.categoryName}</a>
                </p>
                <p class="card-text"><strong>Цена: </strong>${toy.price}</p>
            </div>
        </div>
    </div>
</#macro>
