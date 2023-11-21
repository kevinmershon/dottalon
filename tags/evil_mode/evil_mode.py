from talon import Context, Module, actions

mod = Module()
mod.tag("evil_mode", desc="EVIL mode for Emacs")

ctx = Context()
ctx.matches = r"""
tag: user.evil_mode
"""

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

    def evil_keychord(keychord: str):
        """Enter EVIL keychord"""
        actions.user.escape_and_sleep()
        actions.insert(keychord)

    def jump_line(number_string: str):
        """Jump to line <line>"""
        actions.user.evil_keychord(number_string + "G")

    def spring(number_string: str):
        """Jump to line <line>"""
        actions.user.jump_line(number_string)

    def select_line():
      """Select current line"""
      actions.user.evil_keychord("V")

    def select_line_start():
      """Select to start of current line"""
      actions.user.evil_keychord("v0")

    def select_line_end():
      """Select to end of current line"""
      actions.user.evil_keychord("v$")

    def scan(phrase: str):
      """Search for phrase"""
      actions.user.evil_keychord("/" + phrase)

    def back_scan(phrase: str):
      """Search backward for phrase"""
      actions.user.evil_keychord("?" + phrase)

@ctx.action_class("edit")
class EditActions:
  def line_insert_down():
    actions.user.evil_keychord("o")
