(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.286648477883866714677196796401403844356536865234375 83 {- 1290949978184102 83 (-1.24437e+025)}
; -1.286648477883866714677196796401403844356536865234375 83 I == -1.286648477883866714677196796401403844356536865234375 83
; [HW: -1.286648477883866714677196796401403844356536865234375 83] 

; mpf : - 1290949978184102 83
; mpfd: - 1290949978184102 83 (-1.24437e+025) class: Neg. norm. non-zero
; hwf : - 1290949978184102 83 (-1.24437e+025) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001010010 #b0100100101100001110010110110110111110101100110100110)))
(assert (= r (fp #b1 #b10001010010 #b0100100101100001110010110110110111110101100110100110)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
