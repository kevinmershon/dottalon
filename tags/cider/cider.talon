tag: user.cider
--

# SEXP mode #
term last: user.sexp_mode_key_chord("h")
term next: user.sexp_mode_key_chord("l")
(parens | wrap) that: user.sexp_mode_key_chord("w")
unwrap that: user.sexp_mode_key_chord("W")
slurp that: user.sexp_mode_key_chord("s")
(barf | spit) that: user.sexp_mode_key_chord("b")
block [new] before: user.sexp_mode_key_chord("(")
block [new] after: user.sexp_mode_key_chord(")")
block outer: user.sexp_mode_key_chord("U")
swap (that | next): user.sexp_mode_key_chord("t")

# CIDER #
cider clear: user.cider_key_chord("s l")
cider connect:
  user.emacs("cider-connect")
  user.sleep_and_enter()
cider debug [term]: user.cider_key_chord("d b")
cider eval buffer: user.cider_key_chord("e b")
cider eval [term]: user.cider_key_chord("e v")
cider pprint: user.cider_key_chord("e p e")
cider focus:
  user.emacs("cider-switch-to-repl-buffer")
  user.sleep_and_enter()
cider format:
  user.cider_key_chord("= l")
cider jack in:
  user.emacs("cider-jack-in")
  user.sleep_and_enter()
cider quit: user.emacs("cider-quit")
cider do <user.text>: user.cider_do(text)
cider command last:
  user.escape_and_sleep()
  key("ctrl-K")
cider command next:
  user.escape_and_sleep()
  key("ctrl-J")
cider namespace [<user.text>]:
  user.cider_namespace(text)
and go:
  user.escape_and_sleep()
  key(enter)

open deps:
    user.emacs_key("space p f")
    insert("deps.edn")
