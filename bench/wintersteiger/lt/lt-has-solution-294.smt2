(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5559065609989535250434755653259344398975372314453125p-200 {- 2503580580967701 -200 (-9.68243e-061)}
; Y = 1.157401570690450132161686269682832062244415283203125p-293 {+ 708873655109042 -293 (7.27269e-089)}
; -1.5559065609989535250434755653259344398975372314453125p-200 < 1.157401570690450132161686269682832062244415283203125p-293 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110111 #b1000111001001111111001000111001100011111010100010101)))
(assert (= y (fp #b0 #b01011011010 #b0010100001001011011110000010011001110100010110110010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
