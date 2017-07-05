(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3599807077496863794152659465908072888851165771484375 854 {- 1621208981282055 854 (-1.63361e+257)}
; -1.3599807077496863794152659465908072888851165771484375 854 I == -1.3599807077496863794152659465908072888851165771484375 854
; [HW: -1.3599807077496863794152659465908072888851165771484375 854] 

; mpf : - 1621208981282055 854
; mpfd: - 1621208981282055 854 (-1.63361e+257) class: Neg. norm. non-zero
; hwf : - 1621208981282055 854 (-1.63361e+257) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010101 #b0101110000100111101100100001011011111001110100000111)))
(assert (= r (fp #b1 #b11101010101 #b0101110000100111101100100001011011111001110100000111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
