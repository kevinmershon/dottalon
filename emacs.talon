app: emacs
-
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

# SEXP mode #
term last:
  key("esc")
  sleep(50ms)
  key("space k h")
term next:
  key("esc")
  sleep(50ms)
  key("space k l")
quote that: key("s \"")
(parens | wrap) that:
  key("esc")
  sleep(50ms)
  key("space k w")
unwrap that:
  key("esc")
  sleep(50ms)
  key("space k W")
slurp that:
  key("esc")
  sleep(50ms)
  key("space k s")
(barf | spit) that:
  key("esc")
  sleep(50ms)
  key("space k b")
block [new] before:
  key("esc")
  sleep(50ms)
  key("space k (")
block [new] after:
  key("esc")
  sleep(50ms)
  key("space k )")
block end:
  key("esc")
  sleep(50ms)
  key("space k $")
block outer:
  key("esc")
  sleep(50ms)
  key("space k U")
swap (that | next):
  key("esc")
  sleep(50ms)
  key("space k t")

# EVIL MODE panes (windows) #
buffer kill: key("space b d")
pane (previous | last): key("ctrl-w h")
pane next: key("ctrl-w l")
pane kill: key("space w d")
pane split down: key("ctrl-w s")
pane split right: key("ctrl-w v")

# CIDER #
cider clear:
  key("esc")
  sleep(50ms)
  key(", s l")
cider connect:
  user.emacs("cider-connect")
  sleep(50ms)
  key(enter)
cider eval:
  key("esc")
  sleep(50ms)
  key(", s e b")
cider focus:
  user.emacs("cider-switch-to-repl-buffer")
  key(enter)
cider jack in:
  user.emacs("cider-jack-in")
  key(enter)
cider quit: user.emacs("cider-quit")
cider do <user.text>:
  key("esc")
  sleep(50ms)
  key(i)
  insert("(")
  insert(text)
  insert(")")
cider command last:
  key("esc")
  sleep(50ms)
  key("ctrl-K")
cider command next:
  key("esc")
  sleep(50ms)
  key("ctrl-J")
cider namespace [<user.text>]:
  key("esc")
  sleep(50ms)
  key(i)
  insert("(in-ns '")
  insert(text)
  insert(")")
  key(left)
and go:
  key("esc")
  sleep(50ms)
  key(enter)

open deps:
    user.emacs_key("space p f")
    user.insert_formatted("deps.edn", "DASH_SEPARATED")
    key(enter)