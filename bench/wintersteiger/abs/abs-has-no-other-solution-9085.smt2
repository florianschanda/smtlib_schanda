(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3275534295661983730241217926959507167339324951171875p334 {- 1475169503338259 334 (-4.64591e+100)}
; -1.3275534295661983730241217926959507167339324951171875p334 | == 1.3275534295661983730241217926959507167339324951171875p334
; [HW: 1.3275534295661983730241217926959507167339324951171875p334] 

; mpf : + 1475169503338259 334
; mpfd: + 1475169503338259 334 (4.64591e+100) class: Pos. norm. non-zero
; hwf : + 1475169503338259 334 (4.64591e+100) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001101 #b0101001111011010100010101010001110101101111100010011)))
(assert (= r (fp #b0 #b10101001101 #b0101001111011010100010101010001110101101111100010011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
