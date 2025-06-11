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
        alignment: str = 'center',
        width: OptionalNumber = None,
        height: OptionalNumber = None,
        match_text_direction: bool = False,
        allow_drawing_outside_view_box: bool = False,
        semantics_label: Optional[str] = None,
        exclude_from_semantics: bool = False,
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
        self.alignment = alignment
        self.width = width
        self.height = height
        self.match_text_direction = match_text_direction
        self.allow_drawing_outside_view_box = allow_drawing_outside_view_box
        self.semantics_label = semantics_label
        self.exclude_from_semantics = exclude_from_semantics

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
        self._set_attr("kind", kind)

    # alignment
    @property
    def alignment(self):
        """
        alignment property description.
        """
        return self._get_attr("alignment")

    @alignment.setter
    def alignment(self, alignment):
        self._set_attr("alignment", alignment)

    # width
    @property
    def width(self):
        """
        width property description.
        """
        return self._get_attr("width")

    @width.setter
    def width(self, width):
        self._set_attr("width", width)

    # height
    @property
    def height(self):
        """
        height property description.
        """
        return self._get_attr("height")

    @height.setter
    def height(self, height):
        self._set_attr("height", height)

    # match_text_direction
    @property
    def match_text_direction(self):
        """
        match_text_direction property description.
        """
        return self._get_attr("match_text_direction")

    @match_text_direction.setter
    def match_text_direction(self, match_text_direction):
        self._set_attr("match_text_direction", match_text_direction)

    # allow_drawing_outside_view_box
    @property
    def allow_drawing_outside_view_box(self):
        """
        allow_drawing_outside_view_box property description.
        """
        return self._get_attr("allow_drawing_outside_view_box")

    @allow_drawing_outside_view_box.setter
    def allow_drawing_outside_view_box(self, allow_drawing_outside_view_box):
        self._set_attr("allow_drawing_outside_view_box", allow_drawing_outside_view_box)

    # semantics_label
    @property
    def semantics_label(self):
        """
        semantics_label property description.
        """
        return self._get_attr("semantics_label")

    @semantics_label.setter
    def semantics_label(self, semantics_label):
        self._set_attr("semantics_label", semantics_label)

    # exclude_from_semantics
    @property
    def exclude_from_semantics(self):
        """
        exclude_from_semantics property description.
        """
        return self._get_attr("exclude_from_semantics")

    @exclude_from_semantics.setter
    def exclude_from_semantics(self, exclude_from_semantics):
        self._set_attr("exclude_from_semantics", exclude_from_semantics)
