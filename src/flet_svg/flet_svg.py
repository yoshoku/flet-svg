from enum import Enum
from typing import Any, Optional

from flet.core.constrained_control import ConstrainedControl
from flet.core.control import OptionalNumber

class FletSvg(ConstrainedControl):
    """
    FletSvg Control description.
    """

    def __init__(
        self,
        #
        # Control
        #
        opacity: OptionalNumber = None,
        tooltip: Optional[str] = None,
        visible: Optional[bool] = None,
        data: Any = None,
        #
        # ConstrainedControl
        #
        left: OptionalNumber = None,
        top: OptionalNumber = None,
        right: OptionalNumber = None,
        bottom: OptionalNumber = None,
        #
        # FletSvg specific
        #
        src: Optional[str] = None,
        kind: Optional[str] = None,
    ):
        ConstrainedControl.__init__(
            self,
            tooltip=tooltip,
            opacity=opacity,
            visible=visible,
            data=data,
            left=left,
            top=top,
            right=right,
            bottom=bottom,
        )

        self.src = src
        self.kind = kind

    def _get_control_name(self):
        return "flet_svg"

    # src
    @property
    def src(self):
        """
        src property description.
        """
        return self._get_attr("src")

    @src.setter
    def src(self, src):
        self._set_attr("src", src)

    # kind
    @property
    def kind(self):
        """
        kind property description.
        """
        return self._get_attr("kind")

    @kind.setter
    def kind(self, kind):
        if kind not in ["network", "string", "file", "asset"]:
            raise ValueError("kind must be 'network', 'string', 'file', or 'asset'")
        self._set_attr("kind", kind)
