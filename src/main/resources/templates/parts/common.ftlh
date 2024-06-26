<#macro page>
    <!DOCTYPE html>
    <html lang="en" data-bs-theme="light">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <title>Экзамен</title>
        <link
                rel="icon"
                type="image/svg+xml"
                href="data:image/svg+xml;base64, PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0iY3VycmVudENvbG9yIiBjbGFzcz0iYmkgYmktZmlsZXR5cGUtanMiIHZpZXdCb3g9IjAgMCAxNiAxNiI+CjxzdHlsZT4KICAgICAgICBwYXRoIHsKICAgICAgICAgICAgZmlsbDogIzAwMDsKICAgICAgICB9CiAgICAgICAgQG1lZGlhIChwcmVmZXJzLWNvbG9yLXNjaGVtZTogZGFyaykgewogICAgICAgICAgICBwYXRoIHsKICAgICAgICAgICAgICAgIGZpbGw6ICNmZmY7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICA8L3N0eWxlPiAgCjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTE0IDQuNVYxNGEyIDIgMCAwIDEtMiAySDh2LTFoNGExIDEgMCAwIDAgMS0xVjQuNWgtMkExLjUgMS41IDAgMCAxIDkuNSAzVjFINGExIDEgMCAwIDAtMSAxdjlIMlYyYTIgMiAwIDAgMSAyLTJoNS41TDE0IDQuNVpNMy4xODYgMTUuMjlhMS4xNzYgMS4xNzYgMCAwIDEtLjExMS0uNDQ5aC43NjVhLjU3OC41NzggMCAwIDAgLjI1NS4zODRjLjA3LjA0OS4xNTMuMDg3LjI0OS4xMTQuMDk1LjAyOC4yMDIuMDQxLjMxOS4wNDEuMTY0IDAgLjMwMi0uMDIzLjQxMy0uMDdhLjU1OS41NTkgMCAwIDAgLjI1NS0uMTkzLjUwNy41MDcgMCAwIDAgLjA4NS0uMjkuMzg3LjM4NyAwIDAgMC0uMTUzLS4zMjZjLS4xMDEtLjA4LS4yNTUtLjE0NC0uNDYyLS4xOTNsLS42MTktLjE0M2ExLjcyIDEuNzIgMCAwIDEtLjUzOS0uMjE0IDEuMDAxIDEuMDAxIDAgMCAxLS4zNTEtLjM2NyAxLjA2OCAxLjA2OCAwIDAgMS0uMTIzLS41MjRjMC0uMjQ0LjA2My0uNDU3LjE5LS42MzkuMTI3LS4xODEuMzAzLS4zMjIuNTI4LS40MjIuMjI0LS4xLjQ4My0uMTQ5Ljc3Ni0uMTQ5LjMwNSAwIC41NjQuMDUuNzguMTUyLjIxNi4xMDIuMzgzLjIzOS41LjQxLjEyLjE3LjE4Ni4zNTkuMi41NjZoLS43NWEuNTYuNTYgMCAwIDAtLjEyLS4yNTguNjI0LjYyNCAwIDAgMC0uMjQ3LS4xODEuOTIzLjkyMyAwIDAgMC0uMzY5LS4wNjhjLS4yMTcgMC0uMzg4LjA1LS41MTMuMTUyYS40NzIuNDcyIDAgMCAwLS4xODQuMzg0YzAgLjEyMS4wNDguMjIuMTQzLjNhLjk3Ljk3IDAgMCAwIC40MDUuMTc1bC42Mi4xNDNjLjIxOC4wNS40MDYuMTIuNTY2LjIxMS4xNi4wOS4yODUuMjEuMzc1LjM1OC4wOS4xNDguMTM1LjMzNS4xMzUuNTYgMCAuMjQ3LS4wNjMuNDY2LS4xODguNjU2YTEuMjE2IDEuMjE2IDAgMCAxLS41MzkuNDM5Yy0uMjM0LjEwNS0uNTIuMTU4LS44NTguMTU4LS4yNTQgMC0uNDc2LS4wMy0uNjY1LS4wOWExLjQwNCAxLjQwNCAwIDAgMS0uNDc4LS4yNTIgMS4xMyAxLjEzIDAgMCAxLS4yOS0uMzc1Wm0tMy4xMDQtLjAzM0ExLjMyIDEuMzIgMCAwIDEgMCAxNC43OTFoLjc2NWEuNTc2LjU3NiAwIDAgMCAuMDczLjI3LjQ5OS40OTkgMCAwIDAgLjQ1NC4yNDZjLjE5IDAgLjMzLS4wNTUuNDIyLS4xNjQuMDkyLS4xMS4xMzgtLjI2NS4xMzgtLjQ2NnYtMi43NDVoLjc5djIuNzI1YzAgLjQ0LS4xMTkuNzc0LS4zNTcgMS4wMDUtLjIzNi4yMy0uNTY0LjM0NS0uOTg0LjM0NWExLjU5IDEuNTkgMCAwIDEtLjU2OS0uMDk0IDEuMTQ1IDEuMTQ1IDAgMCAxLS40MDctLjI2NiAxLjE0IDEuMTQgMCAwIDEtLjI0My0uMzlaIi8+Cjwvc3ZnPg=="
        />

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

        <link rel="stylesheet" href="/static/style/style.css">

        <script type="text/javascript" src="/static/script/colorTheme.js"></script>
    </head>
    <body class="">
    <div class="container-fluid">
        <div class="nav-wrapper">
            <#include "navbar.ftlh">
        </div>
        <div class="w-md-75 ms-sm-6 py-4 px-3 px-md-5 mt-3 overflow-auto border rounded-5 shadow-sm mx-md-auto">
            <#nested>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    </body>
    </html>
</#macro>
