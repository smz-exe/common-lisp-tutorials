# Common Lisp Tutorials

This repository contains my practice and learning journey for Common Lisp programming.

---

## Structure

- `examples/`: Small code examples for various Lisp features.
- `projects/`: Larger projects to apply the knowledge.

---

## Tools

- SBCL (Steel Bank Common Lisp)
- Emacs with SLIME / VSCode with Alive

---

## How to Set Up

1. **Install SBCL**
    Download and install SBCL from [https://www.sbcl.org/](https://www.sbcl.org/), or use your package manager:

    ```bash
   brew install sbcl    # macOS
   sudo apt install sbcl # Debian/Ubuntu
   ```

2. **Clone this repository**

   ```bash
   git clone https://github.com/smz-exe/common-lisp-tutorials.git
   ```

3. **Run Quicklisp setup**
   Inside SBCL, load Quicklisp:

   ```bash
   sbcl --load quicklisp.lisp
   ```

---

## Setting Up Dependencies

To set up the necessary dependencies for this project, execute the following commands one at a time in your Common Lisp REPL:

```lisp
(quicklisp-quickstart:install)      ; Install Quicklisp
(ql:add-to-init-file)              ; Add Quicklisp to your init file
(ql:quickload :usocket)            ; Load the usocket library
(ql:quickload :alive-lsp)          ; Load the alive-lsp library
(ql:quickload :bordeaux-threads)   ; Load the bordeaux-threads library
(ql:quickload :flexi-streams)      ; Load the flexi-streams library
```

---

## How to Execute `.lisp` Files

This section provides general instructions on how to run `.lisp` files in Common Lisp environments. These methods are applicable to various setups and editors like Emacs with SLIME or VSCode with Alive.

---

### 1. Using `load` in a REPL

The most common way to execute a `.lisp` file is by using the `load` function in a Common Lisp REPL (Read-Eval-Print Loop).

### Steps

1. **Start your Lisp environment**
   Launch your Lisp environment. For example, using SBCL:

   ```bash
   sbcl
   ```

2. **Load the file**
   Use the load function to load your `.lisp` file:

   ```lisp
   (load "your-file.lisp")
   ```

   - If the file is not in the current directory, provide the full path:

    ```lisp
    (load "/path/to/your-file.lisp")
    ```

3. **Run functions defined in the file**
   After loading, you can call any functions or evaluate any expressions defined in the file:

   ```lisp
   (example-function)
   ```

### 2. Interactively Running Code in an Editor

If you're using an editor like **Emacs with SLIME** or **VSCode with Alive**, you can execute selected lines or the entire buffer interactively.

#### **Emacs with SLIME**

1. **Open your `.lisp` file**
   Open the `.lisp` file you want to work on in Emacs.
2. **Start SLIME**
   Run `M-x slime` to connect to the Common Lisp REPL.
3. **Load the file**
   Use `M-x slime-load-file` to load the entire file into the REPL.
4. **Evaluate individual lines or expressions**
   - Place your cursor on a line or select a region of code.
   - Press `C-x C-e` (Control + x, Control + e) to evaluate the expression at the cursor or the end of the line. The result will be displayed in the REPL.
5. **Run expressions interactively**
   You can switch to the REPL buffer and directly run expressions or call functions from your file.

#### **VSCode with Alive**

1. **Install Alive**
   Install the [Alive](https://marketplace.visualstudio.com/items?itemName=rheller.alive) extension for Common Lisp in VSCode.
2. **Open your `.lisp` file**
   Open the `.lisp` file in VSCode that you want to work on.
3. **Connect the REPL**
   Use Alive's connection options to link VSCode to your Common Lisp REPL (e.g., SBCL).
4. **Execute selected code**
   - Highlight the code you want to execute.
   - Press:
     - `Option + Shift + Enter` (macOS)
     - `Alt + Shift + Enter` (Windows/Linux)
   - The selected code will be sent to the REPL and executed.
5. **Load the entire file**
   You can also load the whole file by typing `(load "your-file.lisp")` in the REPL.

### Notes

- For both Emacs and VSCode, make sure the REPL is running and connected to the correct environment before executing code.
- Interactive execution allows for rapid testing and debugging, making it a powerful workflow for Lisp development.

---
