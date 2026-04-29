(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4619363297134959633893913633073680102825164794921875 967 {+ 2080376282366595 967 (1.82362e+291)}
; 1.4619363297134959633893913633073680102825164794921875 967 I == 1.4619363297134959633893913633073680102825164794921875 967
; [HW: 1.4619363297134959633893913633073680102825164794921875 967] 

; mpf : + 2080376282366595 967
; mpfd: + 2080376282366595 967 (1.82362e+291) class: Pos. norm. non-zero
; hwf : + 2080376282366595 967 (1.82362e+291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000110 #b0111011001000001011101011001010011110100001010000011)))
(assert (= r (fp #b0 #b11111000110 #b0111011001000001011101011001010011110100001010000011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
