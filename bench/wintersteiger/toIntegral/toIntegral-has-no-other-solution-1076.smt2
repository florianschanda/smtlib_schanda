(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.60325412333381933649434358812868595123291015625 503 {+ 2716815045055904 503 (4.19846e+151)}
; 1.60325412333381933649434358812868595123291015625 503 I == 1.60325412333381933649434358812868595123291015625 503
; [HW: 1.60325412333381933649434358812868595123291015625 503] 

; mpf : + 2716815045055904 503
; mpfd: + 2716815045055904 503 (4.19846e+151) class: Pos. norm. non-zero
; hwf : + 2716815045055904 503 (4.19846e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110110 #b1001101001101110110111001011101011100101010110100000)))
(assert (= r (fp #b0 #b10111110110 #b1001101001101110110111001011101011100101010110100000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
