(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1980363568701750676126493999618105590343475341796875 136 {+ 891876463006331 136 (1.04364e+041)}
; 1.1980363568701750676126493999618105590343475341796875 136 I == 1.1980363568701750676126493999618105590343475341796875 136
; [HW: 1.1980363568701750676126493999618105590343475341796875 136] 

; mpf : + 891876463006331 136
; mpfd: + 891876463006331 136 (1.04364e+041) class: Pos. norm. non-zero
; hwf : + 891876463006331 136 (1.04364e+041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000111 #b0011001010110010100000101011110000101101001001111011)))
(assert (= r (fp #b0 #b10010000111 #b0011001010110010100000101011110000101101001001111011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
