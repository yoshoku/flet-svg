import flet as ft

from flet_svg import FletSvg


def main(page: ft.Page) -> None:
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER

    page.add(ft.Container(
        height=150,
        width=300,
        alignment=ft.alignment.center,
        bgcolor=ft.Colors.PURPLE_200,
        content=FletSvg(
            src="https://raw.githubusercontent.com/flet-dev/"
                "examples/refs/heads/main/python/tutorials/solitaire/"
                "solitaire-game-rules/assets/images/King_clubs.svg",
            kind="network",
        ),
    ))

ft.app(main)
