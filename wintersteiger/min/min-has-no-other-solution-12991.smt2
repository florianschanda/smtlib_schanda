(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.9943679297084655477334536044509150087833404541015625p473 {- 4478235037704217 473 (-4.864e+142)}
; +zero m -1.9943679297084655477334536044509150087833404541015625p473 == -1.9943679297084655477334536044509150087833404541015625p473
; [HW: -1.9943679297084655477334536044509150087833404541015625p473] 

; mpf : - 4478235037704217 473
; mpfd: - 4478235037704217 473 (-4.864e+142) class: Neg. norm. non-zero
; hwf : - 4478235037704217 473 (-4.864e+142) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b10111011000 #b1111111010001110111001011000101001001010000000011001)))
(assert (= r (fp #b1 #b10111011000 #b1111111010001110111001011000101001001010000000011001)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
