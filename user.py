from talon import Context, Module, actions

mod = Module()
mod.tag("kmershon", desc="kmershon custom")

ctx = Context()
ctx.matches = r"""
tag: user.kmershon
"""

@mod.action_class
class Actions:
    def cider_select(name: str):
        """Run (select :<name>)"""
        actions.user.cider_do("select :" + actions.user.formatted_text(name, "ALL_LOWERCASE,DASH_SEPARATED"))
