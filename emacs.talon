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
term last: key("space k h")
term next: key("space k l")
quote that: key("s \"")
(parens | wrap) that: key("space k w")
unwrap that: key("space k W")
slurp that: key("space k s")
(barf | spit) that: key("space k b")
block [new] before: key("space k (")
block [new] after: key("space k )")
block outer: key("space k U")
swap (that | next): key("space k t")

# EVIL MODE panes (windows) #
buffer kill: key("space b d")
pane (previous | last): key("ctrl-w h")
pane next: key("ctrl-w l")
pane kill: key("space w d")
pane split down: key("ctrl-w s")
pane split right: key("ctrl-w v")

# CLOJURE #
buffer eval: user.emacs("cider-evaluate-buffer")
cider connect: key(", s c j")
cider jack in: key(", s j j")
cider quit: user.emacs("cider-quit")
cider focus: key(", s a")
open deps:
    user.emacs_key("space p f")
    user.insert_formatted("deps.edn", "DASH_SEPARATED")
    key(enter)
