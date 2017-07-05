(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6240435870529721373856091304332949221134185791015625 617 {+ 2810442466114713 617 (8.83293e+185)}
; 1.6240435870529721373856091304332949221134185791015625 617 I == 1.6240435870529721373856091304332949221134185791015625 617
; [HW: 1.6240435870529721373856091304332949221134185791015625 617] 

; mpf : + 2810442466114713 617
; mpfd: + 2810442466114713 617 (8.83293e+185) class: Pos. norm. non-zero
; hwf : + 2810442466114713 617 (8.83293e+185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101000 #b1001111111000001010100100000110110101011110010011001)))
(assert (= r (fp #b0 #b11001101000 #b1001111111000001010100100000110110101011110010011001)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
