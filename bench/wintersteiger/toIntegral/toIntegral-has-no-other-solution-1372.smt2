(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6298021918795229101561972129275090992450714111328125 947 {+ 2836376916665741 947 (1.93883e+285)}
; 1.6298021918795229101561972129275090992450714111328125 947 I == 1.6298021918795229101561972129275090992450714111328125 947
; [HW: 1.6298021918795229101561972129275090992450714111328125 947] 

; mpf : + 2836376916665741 947
; mpfd: + 2836376916665741 947 (1.93883e+285) class: Pos. norm. non-zero
; hwf : + 2836376916665741 947 (1.93883e+285) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110010 #b1010000100111010101101110110100100010010010110001101)))
(assert (= r (fp #b0 #b11110110010 #b1010000100111010101101110110100100010010010110001101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
