(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.930334562692497257785362307913601398468017578125 504 {+ 4189854389871824 504 (1.011e+152)}
; 1.930334562692497257785362307913601398468017578125 504 I == 1.930334562692497257785362307913601398468017578125 504
; [HW: 1.930334562692497257785362307913601398468017578125 504] 

; mpf : + 4189854389871824 504
; mpfd: + 4189854389871824 504 (1.011e+152) class: Pos. norm. non-zero
; hwf : + 4189854389871824 504 (1.011e+152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110111 #b1110111000101010011001111110100100011010010011010000)))
(assert (= r (fp #b0 #b10111110111 #b1110111000101010011001111110100100011010010011010000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
