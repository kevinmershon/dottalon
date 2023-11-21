app: emacs
--

tag(): user.cider
tag(): user.evil_mode

treemacs: key(f2)

cancel: key("escape")
undo: key("u")
redo: key("R")

emacs go: "emacs -nw\n"
vim go: "vim\n"

cider select <user.text>:
  user.cider_select(text)

dub quote:
  insert("\"\"")
  key(left)

push:
  key("esc")
  sleep(50ms)
  key(A)

squares:
  insert("[]")
  key(left)

not that:
  key(esc)
  sleep(50ms)
  key(u)

go to line <number>:
  user.escape_and_sleep()
  key(number)
  key(G)
add a comment:
  user.escape_and_sleep()
  key("i")
  key("; ;")
comment this:
  user.escape_and_sleep()
  key("I ; ;")
copilot toggle:
  user.emacs("copilot-mode")
  user.sleep_and_enter()