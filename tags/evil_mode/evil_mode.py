from talon import Context, Module

mod = Module()
mod.tag("evil_mode", desc="EVIL mode for Emacs")

ctx = Context()
ctx.matches = r"""
tag: user.evil_mode
"""
