(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.220073323555944444507304069702513515949249267578125 472 {+ 991122137960738 472 (1.4878e+142)}
; 1.220073323555944444507304069702513515949249267578125 472 I == 1.220073323555944444507304069702513515949249267578125 472
; [HW: 1.220073323555944444507304069702513515949249267578125 472] 

; mpf : + 991122137960738 472
; mpfd: + 991122137960738 472 (1.4878e+142) class: Pos. norm. non-zero
; hwf : + 991122137960738 472 (1.4878e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111010111 #b0011100001010110101110011010111101100101000100100010)))
(assert (= r (fp #b0 #b10111010111 #b0011100001010110101110011010111101100101000100100010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
