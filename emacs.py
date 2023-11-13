from talon import Context, Module, actions

mod = Module()

ctx = Context()
ctx.matches = """
os: mac
app: warp
title: /emacs/
"""

ctx.apps = ['emacs']
