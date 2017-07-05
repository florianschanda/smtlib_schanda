(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3707529126990107837258392464718781411647796630859375 49 {- 1669722679477791 49 (-7.71665e+014)}
; -1.3707529126990107837258392464718781411647796630859375 49 I == -1.37075291269901100577044417150318622589111328125 49
; [HW: -1.37075291269901100577044417150318622589111328125 49] 

; mpf : - 1669722679477792 49
; mpfd: - 1669722679477792 49 (-7.71665e+014) class: Neg. norm. non-zero
; hwf : - 1669722679477792 49 (-7.71665e+014) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000110000 #b0101111011101001101010011011001011110000011000011111)))
(assert (= r (fp #b1 #b10000110000 #b0101111011101001101010011011001011110000011000100000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
