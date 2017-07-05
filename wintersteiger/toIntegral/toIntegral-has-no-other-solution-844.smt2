(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.87867026514800361525203697965480387210845947265625 870 {+ 3957179078702084 870 (1.47893e+262)}
; 1.87867026514800361525203697965480387210845947265625 870 I == 1.87867026514800361525203697965480387210845947265625 870
; [HW: 1.87867026514800361525203697965480387210845947265625 870] 

; mpf : + 3957179078702084 870
; mpfd: + 3957179078702084 870 (1.47893e+262) class: Pos. norm. non-zero
; hwf : + 3957179078702084 870 (1.47893e+262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100101 #b1110000011110000100010001101010011000111010000000100)))
(assert (= r (fp #b0 #b11101100101 #b1110000011110000100010001101010011000111010000000100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
