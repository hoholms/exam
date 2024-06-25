<#macro toyCard toy>
    <div class="card-wrapper col-md-6 col-lg-4 mb-3">
        <div class="card h-100 rounded-4 shadow-sm">
            <#if toy.photo??>
                <img src="/images/${(toy?? && toy.photo??)?then(toy.photo!'', '')}"
                     class="card-img-top object-fit-cover rounded-top-4"
                     alt="${toy.toyName}">
            </#if>
            <div class="card-body d-flex flex-column">
                <h5 class="card-title text-center"><a href="${(toy?? && toy.id??)?then('/toy/edit/' + toy.id!'', '#')}"
                                                      class="link-body-emphasis link-underline link-underline-opacity-0 link-underline-opacity-75-hover">${(toy?? && toy.toyName??)?then(toy.toyName!'', 'Неописуемо')}</a>
                </h5>
                <p class="card-text"><strong>Размер: </strong>${(toy?? && toy.size??)?then(toy.size!'', 'Бесконечно')}
                </p>
                <p class="card-text">
                    <strong>Материал: </strong>${(toy?? && toy.material??)?then(toy.material!'', 'Антиматерия')}</p>
                <p class="card-text"><strong>Категория: </strong><a
                            href="${(toy?? && toy.category?? && toy.category.id??)?then('/category/edit/' + toy.category.id!'', '#')}"
                            class="link-body-emphasis link-underline link-underline-opacity-0 link-underline-opacity-75-hover">${(toy?? && toy.category?? && toy.category.categoryName??)?then(toy.category.categoryName!'', 'Уникально')}</a>
                </p>
                <p class="card-text"><strong>Цена: </strong>${(toy?? && toy.price??)?then(toy.price!'', 'Бесценно')}</p>
            </div>
        </div>
    </div>
</#macro>
