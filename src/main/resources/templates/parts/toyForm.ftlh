<#macro toyForm toy categories>
    <div class="w-md-75 mx-md-auto">
        <form method="post" action="${(toy?? && toy.id??)?then('/toy/edit', '/toy/add')}"
              enctype="multipart/form-data">

            <input type="hidden" id="id" name="id" value="${(toy??)?then(toy.id!'', '')}">

            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="toyName" name="toyName" placeholder="Название игрушки"
                       value="${(toy??)?then(toy.toyName!'', '')}" required>
                <label for="toyName">Название игрушки</label>
            </div>

            <div class="form-floating mb-3">
                <input type="number" class="form-control" id="size" name="size" placeholder="Размер"
                       value="${(toy??)?then(toy.size!'', '')}" required>
                <label for="size">Размер</label>
            </div>

            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="material" name="material" placeholder="Материал"
                       value="${(toy??)?then(toy.material!'', '')}" required>
                <label for="material">Материал</label>
            </div>

            <div class="form-floating mb-3">
                <input type="number" step="0.01" class="form-control" id="price" name="price" placeholder="Цена"
                       value="${(toy?? && toy.price??)?then(toy.price?string.computer!'', '')}" required>
                <label for="price">Цена</label>
            </div>

            <div class="form-floating mb-3">
                <select class="form-select" id="category" name="category" required>
                    <#list categories as category>
                        <option value="${category.id}"
                                <#if ((toy??) && toy.category?? && ((toy.category.id!-1) == category.id))>selected</#if>>${category.categoryName}</option>
                    </#list>
                </select>
                <label for="category">Категория</label>
            </div>

            <div class="mb-3">
                <label for="photo" class="form-label">Фото</label>
                <input type="file" class="form-control" id="photo" name="photo" accept="image/*"
                       value="${(toy??)?then(toy.photo!'', '')}">
                <#if (toy??) && (toy.photo??)>
                    <img src="/images/${toy.photo}" alt="${toy.toyName}" class="img-thumbnail mt-2"
                         style="max-height: 150px;">
                </#if>
            </div>

            <button type="submit" class="btn btn-primary">Сохранить</button>
        </form>

        <#if toy?? && toy.id??>
            <button type="button" class="btn btn-danger mt-3" data-bs-toggle="modal" data-bs-target="#deleteModal">
                Удалить
            </button>

            <!-- Modal -->
            <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="deleteModalLabel">Подтверждение удаления</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            Вы уверены, что хотите удалить эту игрушку?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отмена</button>
                            <form method="post" action="/toy/delete/${toy.id}">
                                <button type="submit" class="btn btn-danger">Удалить</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </#if>
    </div>
</#macro>
