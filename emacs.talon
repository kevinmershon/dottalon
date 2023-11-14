app: emacs
-
@tag(): cider

treemacs: key(f2)

# EVIL MODE movement #
select block: key("v a p k")
select line: key(V)
select cut: key(d)
block (previous | last): key("{ { j")
block next: key("} j")
line cut: key("d d")
line start: key(0)
line end: key($)
select to: key(v)

# EVIL MODE panes (windows) #
buffer kill: key("space b d")
pane (previous | last): key("ctrl-w h")
pane next: key("ctrl-w l")
pane kill: key("space w d")
pane split down: key("ctrl-w s")
pane split right: key("ctrl-w v")