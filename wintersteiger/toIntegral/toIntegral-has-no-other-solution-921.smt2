(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.49838796523961281792480804142542183399200439453125 129 {+ 2244539854539060 129 (1.01975e+039)}
; 1.49838796523961281792480804142542183399200439453125 129 I == 1.49838796523961281792480804142542183399200439453125 129
; [HW: 1.49838796523961281792480804142542183399200439453125 129] 

; mpf : + 2244539854539060 129
; mpfd: + 2244539854539060 129 (1.01975e+039) class: Pos. norm. non-zero
; hwf : + 2244539854539060 129 (1.01975e+039) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000000 #b0111111110010110010110101000101101101100100100110100)))
(assert (= r (fp #b0 #b10010000000 #b0111111110010110010110101000101101101100100100110100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
