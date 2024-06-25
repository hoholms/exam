<header class="navbar navbar-expand-sm sticky-top">
    <div class="container-xxl">
        <button class="navbar-toggler rounded-5 w-100 bg-body shadow-sm" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse justify-content-center mt-3" id="navbarNav">
            <ul class="w-md-75 nav nav-pills nav-fill flex-column flex-sm-row gap-2 p-1 small bg-body rounded-5 shadow-sm"
                style="
                       --bs-nav-link-color: var(--bs-secondary-color);
                       --bs-nav-link-hover-color: var(--bs-body-color);
                       --bs-nav-pills-link-active-color: var(--bs-body-bg);
                       --bs-nav-pills-link-active-bg: var(--bs-body-color);">
                <li class="nav-item">
                    <a class="nav-link rounded-5 <#if springMacroRequestContext.requestUri?contains("/category/add")>active</#if>"
                       href="/category/add">Добавить категорию</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link rounded-5 <#if springMacroRequestContext.requestUri?contains("/toy/add")>active</#if>"
                       href="/toy/add">Добавить игрушку</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link rounded-5 <#if springMacroRequestContext.requestUri?contains("/search") || springMacroRequestContext.requestUri?contains("/index") >active</#if>"
                       href="/search">Поиск игрушек</a>
                </li>
            </ul>
        </div>
    </div>
</header>
