<#macro toyCategoryForm category>
    <div class="w-md-75 mx-md-auto">
        <form method="post" action="${(category?? && category.id??)?then('/category/edit', '/category/add')}">

            <input type="hidden" id="id" name="id" value="${(category??)?then(category.id!'', '')}">

            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="categoryName" name="categoryName"
                       placeholder="Название категории"
                       value="${(category??)?then(category.categoryName!'', '')}" required>
                <label for="categoryName">Название категории</label>
            </div>

            <button type="submit" class="btn btn-primary">Сохранить</button>
        </form>

        <#if category?? && category.id??>
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
                            Вы уверены, что хотите удалить эту категорию?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отмена</button>
                            <form method="post" action="/category/delete/${category.id}">
                                <button type="submit" class="btn btn-danger">Удалить</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </#if>
    </div>
</#macro>
