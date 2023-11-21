tag: user.evil_mode
--

# EVIL MODE movement #
block select: user.evil_keychord("vapk")
block (previous | last): key("{ { j")
block next: user.evil_keychord("}j")
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

# line jumping #
spring <user.number_string>:
  user.spring(number_string)
select line: user.select_line()
select line start: user.select_line_start()
bump: user.evil_keychord("O")
hop: user.evil_keychord("^")
skip: user.evil_keychord("$")
scan <user.text>: user.scan(text)
back scan <user.text>: user.back_scan(text)

# commenting #
comment add:
  insert(";; ")
comment this:
  user.evil_keychord("gcc")