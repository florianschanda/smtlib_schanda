(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2379567862107092590662205111584626138210296630859375 532 {+ 1071662093708831 532 (1.74046e+160)}
; 1.2379567862107092590662205111584626138210296630859375 532 I == 1.2379567862107092590662205111584626138210296630859375 532
; [HW: 1.2379567862107092590662205111584626138210296630859375 532] 

; mpf : + 1071662093708831 532
; mpfd: + 1071662093708831 532 (1.74046e+160) class: Pos. norm. non-zero
; hwf : + 1071662093708831 532 (1.74046e+160) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010011 #b0011110011101010101111000110011010100010111000011111)))
(assert (= r (fp #b0 #b11000010011 #b0011110011101010101111000110011010100010111000011111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
