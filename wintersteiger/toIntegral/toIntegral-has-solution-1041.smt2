(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.658372618297298206613277216092683374881744384765625 1001 {- 2965046678434650 1001 (-3.55392e+301)}
; -1.658372618297298206613277216092683374881744384765625 1001 I == -1.658372618297298206613277216092683374881744384765625 1001
; [HW: -1.658372618297298206613277216092683374881744384765625 1001] 

; mpf : - 2965046678434650 1001
; mpfd: - 2965046678434650 1001 (-3.55392e+301) class: Neg. norm. non-zero
; hwf : - 2965046678434650 1001 (-3.55392e+301) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111101000 #b1010100010001011000110111010000000101011001101011010)))
(assert (= r (fp #b1 #b11111101000 #b1010100010001011000110111010000000101011001101011010)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
