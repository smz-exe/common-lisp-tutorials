# Common Lisp Tutorials

This repository contains my practice and learning journey for Common Lisp programming.

## Structure

- `examples/`: Small code examples for various Lisp features.
- `projects/`: Larger projects to apply the knowledge.

## Tools

- SBCL (Steel Bank Common Lisp)
- Emacs with SLIME / VSCode with Alive

## How to Set Up

1. Install SBCL: [https://www.sbcl.org/](https://www.sbcl.org/) or `brew install sbcl`
2. Clone this repository: `git clone https://github.com/smz-exe/common-lisp-tutorials.git`
3. Run quicklisp.lisp: `sbcl --load quicklisp.lisp`

## Setting Up Dependencies

To set up the necessary dependencies for this project, execute the following commands one at a time in your Common Lisp REPL:

```lisp
(quicklisp-quickstart:install)      ; Install Quicklisp
(ql:add-to-init-file)              ; Add Quicklisp to your init file
(ql:quickload :usocket)            ; Load the usocket library
(ql:quickload :alive-lsp)          ; Load the alive-lsp library
(ql:quickload :bordeaux-threads)   ; Load the bordeaux-threads library
(ql:quickload :flexi-streams)      ; Load the flexi-streams library
