# Introduction

FletSvg for Flet.

## Examples

```
import flet as ft

from flet_svg import FletSvg


def main(page: ft.Page):
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER

    page.add(

                ft.Container(height=150, width=300, alignment = ft.alignment.center, bgcolor=ft.Colors.PURPLE_200, content=FletSvg(
                    tooltip="My new FletSvg Control tooltip",
                    value = "My new FletSvg Flet Control", 
                ),),

    )


ft.app(main)
```

## Classes

[FletSvg](FletSvg.md)


