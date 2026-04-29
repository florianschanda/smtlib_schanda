(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8792345865918422820328714806237258017063140869140625p348 {+ 3959720556546273 348 (1.07751e+105)}
; 1.8792345865918422820328714806237258017063140869140625p348 | == 1.8792345865918422820328714806237258017063140869140625p348
; [HW: 1.8792345865918422820328714806237258017063140869140625p348] 

; mpf : + 3959720556546273 348
; mpfd: + 3959720556546273 348 (1.07751e+105) class: Pos. norm. non-zero
; hwf : + 3959720556546273 348 (1.07751e+105) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011011 #b1110000100010101100001001001001011101100100011100001)))
(assert (= r (fp #b0 #b10101011011 #b1110000100010101100001001001001011101100100011100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
