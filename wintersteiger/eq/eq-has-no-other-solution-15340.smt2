(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.913040599450380074841859823209233582019805908203125p896 {- 4111969303458866 896 (-1.01065e+270)}
; Y = -1.627321498029467239376799625460989773273468017578125p527 {- 2825204864767010 527 (-7.14959e+158)}
; -1.913040599450380074841859823209233582019805908203125p896 = -1.627321498029467239376799625460989773273468017578125p527 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111111 #b1110100110111101000001110101101010001111010000110010)))
(assert (= y (fp #b1 #b11000001110 #b1010000010011000001001000100011000011101010000100010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
