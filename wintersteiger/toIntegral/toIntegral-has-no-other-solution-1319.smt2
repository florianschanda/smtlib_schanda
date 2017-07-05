(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9577901469749059426561643704189918935298919677734375 358 {- 4313503349015319 358 (-1.14949e+108)}
; -1.9577901469749059426561643704189918935298919677734375 358 I == -1.9577901469749059426561643704189918935298919677734375 358
; [HW: -1.9577901469749059426561643704189918935298919677734375 358] 

; mpf : - 4313503349015319 358
; mpfd: - 4313503349015319 358 (-1.14949e+108) class: Neg. norm. non-zero
; hwf : - 4313503349015319 358 (-1.14949e+108) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101100101 #b1111010100110001101111000010110110110000001100010111)))
(assert (= r (fp #b1 #b10101100101 #b1111010100110001101111000010110110110000001100010111)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
