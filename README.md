# Romkan.el

Romkan.el is an Emacs package that provides functionality for converting Japanese Romaji (ローマ字) strings to Japanese Kana (仮名) strings and vice versa. It supports both Katakana (片仮名) and Hiragana (平仮名), using the Hepburn (ヘボン式) romanization system as well as the modern Kunrei-shiki (訓令式) romanization system.

## Usage

Once the package is installed and loaded, you can start using the conversion functions mentioned above in your Emacs Lisp code.

For example, to convert a Romaji string to Katakana:

```elisp
(romkan-to-katakana "ninja")
;; => ニンジャ
```

Or to convert a Kana string to Hepburn Romaji:

```elisp
(romkan-to-roma "にんじゃ")
;; => ninja
```

## Features

Unlike the original package, in this case I decided to inject the conversion tables as static constants, instead of procedurally generate them from strings. This approach slightly increases code redundancy but should also improve the speed of operations, as well as make the tables more immediately readable, which can help in identifying any potential bugs.

## Installation

### Manual

1. Clone the GitHub repository for the Emacs package using the `git clone` command:
```
git clone https://github.com/gicrisf/romkan.el
```

2. Move the cloned package directory into your Emacs' load path, which is typically `~/.emacs.d/`:
```
mv romkan.el ~/.emacs.d/
```

3. Open your Emacs configuration file, usually `~/.emacs.d/init.el` or `~/.emacs`:
```
emacs ~/.emacs.d/init.el
```

4. Require the library in your Emacs configuration file. Assuming that the repository has been moved to the path `~/.emacs.d/`:

```elisp
(add-to-list 'load-path "~/.emacs.d/romkan.el")
(require 'romkan)
```

5. Save the configuration file, then restart Emacs, or reload it.

Now, the package should be installed and loaded whenever you start Emacs.

### Use-package

If you use `use-package`, you can follow the manual procedure and replace the text in the 4th step with these:

```elisp
(use-package package-name
     :load-path "~/.emacs.d/repo")
```

To install the package directly from the GitHub repository, you can simply write:

```elisp
(use-package package-name
  :ensure gicrisf/romkan.el)
```

### Straight
Similarly, you can install the package from a GitHub repository using `straight.el`.
Using the `straight-use-package` function along with the repository URL,

```elisp
(straight-use-package '(:host github :repo "gicrisf/romkan.el"))
```

### Doom Emacs
Using the `package!` macro for Doom Emacs:

```elisp
(package! romkan :recipe (:host github :repo "gicrisf/romkan.el"))
```

## API

The package provides the following functions:

- `(romkan-to-katakana string)`: Converts a Romaji (ローマ字) string to Katakana (片仮名).
- `(romkan-to-hiragana string)`: Converts a Romaji (ローマ字) string to Hiragana (平仮名).
- `(romkan-to-kana string)`: Converts a Romaji (ローマ字) string to Katakana (片仮名). (Alias for `romkan-to-katakana`)
- `(romkan-to-hepburn string)`: Converts a Kana (仮名) or Kunrei-shiki Romaji (訓令式ローマ字) string to Hepburn Romaji (ヘボン式ローマ字).
- `(romkan-to-kunrei string)`: Converts a Kana (仮名) or Hepburn Romaji (ヘボン式ローマ字) string to Kunrei-shiki Romaji (訓令式ローマ字).
- `(romkan-to-roma string)`: Converts a Kana (仮名) string to Hepburn Romaji (ヘボン式ローマ字).

## License
This package is distributed under the BSD license like the Python-Romkan package.
Please refer to the LICENSE file for more information.

## Acknowledgements

This package is based on the work of Satoru Takabayashi (Ruby Romkan) and Masato Hagiwara (Python-Romkan). Their contributions are greatly appreciated.

If you have any feedback, issues, or contributions for this package, please feel free to open an issue or submit a pull request on the GitHub repository.
