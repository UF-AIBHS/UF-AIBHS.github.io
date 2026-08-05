
# IPython Deep Dive: Python Data Science Handbook, Ch. 1

Reading: ["IPython: Beyond Normal Python"](https://jakevdp.github.io/PythonDataScienceHandbook/01.00-ipython-beyond-normal-python.html), by Jake VanderPlas — *Python Data Science Handbook*, Chapter 1.

![Python Data Science Handbook](../../images/extra-resources/environment-setup/pdsh-cover.png)

## 1. Help & Documentation

- `object?` — shows the docstring for any object, function, or method
- `object??` — shows the underlying source code, when available

## 2. Tab Completion

- `object.` + `TAB` — lists an object's attributes and methods
- Wildcard matching with `*` — e.g. `str.*find*?`

## 3. Magic Commands

- `%timeit` / `%%timeit` — time a line / a whole cell
- `%history` — show past commands
- `%run` — execute an external `.py` script
- `%load` — load a script's contents into a cell

## 4. Input / Output History

- `In[]` and `Out[]` — every input and output is numbered and stored
- `_` — the last output; `__` — the one before that
- `Out[2]` — re-access any earlier output by its number

## 5. Shell Access from IPython

- `!ls`, `!pwd` — run any shell command with a `!` prefix
- `contents = !ls` — capture shell output into a Python variable
- `!cp {filename} {dest}` — pass Python variables back into the shell

## 6. Errors & Debugging

- `%xmode` — control how much detail a traceback shows
- `%debug` — drop into an interactive debugger at the point of the last error

## 7. Profiling & Timing

- `%prun` — profile a statement, function by function
- `%lprun` — line-by-line profiling (needs `line_profiler`)
- `%memit` — measure memory use of a statement
