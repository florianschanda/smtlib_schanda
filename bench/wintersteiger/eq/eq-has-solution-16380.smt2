(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1578770456102611685622605364187620580196380615234375p-73 {+ 711015003780727 -73 (1.22595e-022)}
; Y = 1.8667931939857755896383650906500406563282012939453125p276 {+ 3903689505441621 276 (2.2666e+083)}
; 1.1578770456102611685622605364187620580196380615234375p-73 = 1.8667931939857755896383650906500406563282012939453125p276 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110110110 #b0010100001101010101000010100101110101111011001110111)))
(assert (= y (fp #b0 #b10100010011 #b1101110111100110001010001010010010010000011101010101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
