from talon import Context, Module, actions

mod = Module()
mod.tag("cider", desc="CIDER repl for Clojure Emacs")

ctx = Context()
ctx.matches = r"""
tag: user.cider
"""

cider_prefix = ","
sexp_mode_prefix = "space k"

@mod.action_class
class Actions:
    def sleep_and_enter():
        """Sleep 50 ms and then hit Enter"""
        actions.sleep("50ms")
        actions.key("enter")

    def escape_and_sleep():
        """Escape and then sleep 50ms"""
        actions.key("esc")
        actions.sleep("50ms")

    def cider_do(fn: str):
        """Run the specified function"""
        actions.user.escape_and_sleep()
        actions.key("A")
        actions.insert("(" + fn + ")")

    def cider_namespace(ns: str):
        """Change to the specified namespace"""
        actions.user.escape_and_sleep()
        actions.key("A")
        if ns:
          actions.insert("(in-ns '" + ns + ")")
        else:
          actions.insert("(in-ns ')")
          actions.key(left)

    def cider_key_chord(keys: str):
        """Do a cider key chord"""
        actions.user.escape_and_sleep()
        actions.key(cider_prefix + " " + keys)

    def sexp_mode_key_chord(keys: str):
        """Do an s-expression key chord"""
        actions.user.escape_and_sleep()
        actions.key(sexp_mode_prefix + " " + keys)
