(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.27135575251131438534457629430107772350311279296875p-1011 {- 1222077665894796 -1011 (-5.79351e-305)}
; Y = 1.3695448855847540681196505829575471580028533935546875p777 {+ 1664282209016171 777 (1.08864e+234)}
; -1.27135575251131438534457629430107772350311279296875p-1011 < 1.3695448855847540681196505829575471580028533935546875p777 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001100 #b0100010101110111100100100001001010011110000110001100)))
(assert (= y (fp #b0 #b11100001000 #b0101111010011010011111100101110111111101100101101011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
