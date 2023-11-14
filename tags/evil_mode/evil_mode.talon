tag: user.evil_mode
--

# EVIL MODE movement #
block select: key("v a p k")
block (previous | last): key("{ { j")
block next: key("} j")
line select: key(V)
line cut: key("d d")
line start: key(0)
line end: key($)
select cut: key(d)
select to: key(v)

# EVIL MODE panes (windows) #
buffer find: key("space b b")
buffer kill: key("space b d")
pane (previous | last): key("ctrl-w h")
pane next: key("ctrl-w l")
pane kill: key("space w d")
pane split down: key("ctrl-w s")
pane split right: key("ctrl-w v")