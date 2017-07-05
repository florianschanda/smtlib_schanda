(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.27091571437589312409954800386913120746612548828125p349 {- 1220095910312084 349 (-1.45742e+105)}
; Y = 1.6509591923118123180103111735661514103412628173828125p879 {+ 2931659575928877 879 (6.6543e+264)}
; -1.27091571437589312409954800386913120746612548828125p349 m 1.6509591923118123180103111735661514103412628173828125p879 == -1.27091571437589312409954800386913120746612548828125p349
; [HW: -1.27091571437589312409954800386913120746612548828125p349] 

; mpf : - 1220095910312084 349
; mpfd: - 1220095910312084 349 (-1.45742e+105) class: Neg. norm. non-zero
; hwf : - 1220095910312084 349 (-1.45742e+105) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101011100 #b0100010101011010101110110111010100110111100010010100)))
(assert (= y (fp #b0 #b11101101110 #b1010011010100101010000101111101000000010100000101101)))
(assert (= r (fp #b1 #b10101011100 #b0100010101011010101110110111010100110111100010010100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
