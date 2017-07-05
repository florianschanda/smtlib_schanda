(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4660187852867847535520695601007901132106781005859375 18 {- 2098762027765215 18 (-384308)}
; -1.4660187852867847535520695601007901132106781005859375 18 I == -1.4660186767578125 18
; [HW: -1.4660186767578125 18] 

; mpf : - 2098761538994176 18
; mpfd: - 2098761538994176 18 (-384308) class: Neg. norm. non-zero
; hwf : - 2098761538994176 18 (-384308) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000010001 #b0111011101001101000000011101001000100000110111011111)))
(assert (= r (fp #b1 #b10000010001 #b0111011101001101000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
