;;; romkan-test.el --- Tests for romkan -*- lexical-binding: t; -*-

;;; Commentary:
;; Tests for romkan.el - Japanese Romaji/Kana conversion library

;;; Code:

(require 'ert)
(require 'romkan)

;;; Tests for normalize-double-n function

(ert-deftest romkan-test-normalize-double-n-tanni ()
  "Test normalize-double-n with 'tanni'."
  (should (equal "tan'i" (romkan--normalize-double-n "tanni"))))

(ert-deftest romkan-test-normalize-double-n-via-hepburn-kannji ()
  "Test normalize-double-n via hepburn conversion with 'kannji'."
  (should (equal "kanji" (romkan-to-hepburn "kannji"))))

(ert-deftest romkan-test-normalize-double-n-via-hepburn-hannnou ()
  "Test normalize-double-n via hepburn conversion with 'hannnou'."
  (should (equal "han'nou" (romkan-to-hepburn "hannnou"))))

(ert-deftest romkan-test-normalize-double-n-via-hepburn-hannnya ()
  "Test normalize-double-n via hepburn conversion with 'hannnya'."
  (should (equal "han'nya" (romkan-to-hepburn "hannnya"))))

;;; Tests for hiragana conversion

(ert-deftest romkan-test-hiragana-kanji ()
  "Test hiragana conversion of 'kanji'."
  (should (equal "かんじ" (romkan-to-hiragana "kanji"))))

(ert-deftest romkan-test-hiragana-kanzi ()
  "Test hiragana conversion of 'kanzi' (kunrei-shiki)."
  (should (equal "かんじ" (romkan-to-hiragana "kanzi"))))

(ert-deftest romkan-test-hiragana-kannji ()
  "Test hiragana conversion of 'kannji' (double n)."
  (should (equal "かんじ" (romkan-to-hiragana "kannji"))))

(ert-deftest romkan-test-hiragana-chie ()
  "Test hiragana conversion of 'chie'."
  (should (equal "ちえ" (romkan-to-hiragana "chie"))))

(ert-deftest romkan-test-hiragana-tie ()
  "Test hiragana conversion of 'tie' (kunrei-shiki)."
  (should (equal "ちえ" (romkan-to-hiragana "tie"))))

(ert-deftest romkan-test-hiragana-kyouju ()
  "Test hiragana conversion of 'kyouju'."
  (should (equal "きょうじゅ" (romkan-to-hiragana "kyouju"))))

(ert-deftest romkan-test-hiragana-syuukyou ()
  "Test hiragana conversion of 'syuukyou' (kunrei-shiki)."
  (should (equal "しゅうきょう" (romkan-to-hiragana "syuukyou"))))

(ert-deftest romkan-test-hiragana-shuukyou ()
  "Test hiragana conversion of 'shuukyou' (hepburn)."
  (should (equal "しゅうきょう" (romkan-to-hiragana "shuukyou"))))

(ert-deftest romkan-test-hiragana-saichuu ()
  "Test hiragana conversion of 'saichuu'."
  (should (equal "さいちゅう" (romkan-to-hiragana "saichuu"))))

(ert-deftest romkan-test-hiragana-saityuu ()
  "Test hiragana conversion of 'saityuu' (kunrei-shiki)."
  (should (equal "さいちゅう" (romkan-to-hiragana "saityuu"))))

(ert-deftest romkan-test-hiragana-cheri ()
  "Test hiragana conversion of 'cheri-'."
  (should (equal "ちぇりー" (romkan-to-hiragana "cheri-"))))

(ert-deftest romkan-test-hiragana-tyeri ()
  "Test hiragana conversion of 'tyeri-' (kunrei-shiki)."
  (should (equal "ちぇりー" (romkan-to-hiragana "tyeri-"))))

(ert-deftest romkan-test-hiragana-shinrai ()
  "Test hiragana conversion of 'shinrai'."
  (should (equal "しんらい" (romkan-to-hiragana "shinrai"))))

(ert-deftest romkan-test-hiragana-sinrai ()
  "Test hiragana conversion of 'sinrai' (kunrei-shiki)."
  (should (equal "しんらい" (romkan-to-hiragana "sinrai"))))

(ert-deftest romkan-test-hiragana-hannnou ()
  "Test hiragana conversion of 'hannnou' (double n)."
  (should (equal "はんのう" (romkan-to-hiragana "hannnou"))))

(ert-deftest romkan-test-hiragana-hannou ()
  "Test hiragana conversion of 'han'nou' (with apostrophe)."
  (should (equal "はんのう" (romkan-to-hiragana "han'nou"))))

(ert-deftest romkan-test-hiragana-je ()
  "Test hiragana conversion of 'je'."
  (should (equal "じぇ" (romkan-to-hiragana "je"))))

(ert-deftest romkan-test-hiragana-ejento ()
  "Test hiragana conversion of 'e-jento'."
  (should (equal "えーじぇんと" (romkan-to-hiragana "e-jento"))))

;;; Tests for hepburn conversion

(ert-deftest romkan-test-hepburn-kannzi ()
  "Test hepburn conversion of 'kannzi'."
  (should (equal "kanji" (romkan-to-hepburn "kannzi"))))

(ert-deftest romkan-test-hepburn-tie ()
  "Test hepburn conversion of 'tie'."
  (should (equal "chie" (romkan-to-hepburn "tie"))))

;;; Tests for kunrei conversion

(ert-deftest romkan-test-kunrei-kanji ()
  "Test kunrei conversion of 'kanji'."
  (should (equal "kanzi" (romkan-to-kunrei "kanji"))))

(ert-deftest romkan-test-kunrei-chie ()
  "Test kunrei conversion of 'chie'."
  (should (equal "tie" (romkan-to-kunrei "chie"))))

;;; Tests for roma conversion

(ert-deftest romkan-test-roma-kanji ()
  "Test roma conversion of 'かんじ'."
  (should (equal "kanji" (romkan-to-roma "かんじ"))))

(ert-deftest romkan-test-roma-chau ()
  "Test roma conversion of 'ちゃう'."
  (should (equal "chau" (romkan-to-roma "ちゃう"))))

(ert-deftest romkan-test-roma-hannou ()
  "Test roma conversion of 'はんのう'."
  (should (equal "han'nou" (romkan-to-roma "はんのう"))))

(provide 'romkan-test)
;;; romkan-test.el ends here
