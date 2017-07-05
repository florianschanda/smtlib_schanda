(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9208942685511407599818767266697250306606292724609375 559 {- 4147339084694543 559 (-3.62469e+168)}
; -1.9208942685511407599818767266697250306606292724609375 559 I == -1.9208942685511407599818767266697250306606292724609375 559
; [HW: -1.9208942685511407599818767266697250306606292724609375 559] 

; mpf : - 4147339084694543 559
; mpfd: - 4147339084694543 559 (-3.62469e+168) class: Neg. norm. non-zero
; hwf : - 4147339084694543 559 (-3.62469e+168) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101110 #b1110101110111111101110100000111010000000010000001111)))
(assert (= r (fp #b1 #b11000101110 #b1110101110111111101110100000111010000000010000001111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
