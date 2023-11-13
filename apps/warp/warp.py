from talon import Context, Module, actions

mod = Module()

mod.apps.warp = """
tag: terminal
and tag: user.warp
"""

ctx = Context()
ctx.matches = "app: warp"

@ctx.action_class("user")
class UserActions:
    def split_window_right():
        actions.key("cmd-d")

    def split_window_down():
        actions.key("cmd-shift-d")

    def split_last():
        actions.key("cmd-[")

    def split_next():
        actions.key("cmd-]")

    def split_flip():
        actions.key("cmd-shift-enter")
