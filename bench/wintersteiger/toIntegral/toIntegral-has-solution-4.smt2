(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7914848239593703649319422765984199941158294677734375 476 {+ 3564530758252823 476 (3.49535e+143)}
; 1.7914848239593703649319422765984199941158294677734375 476 I == 1.7914848239593703649319422765984199941158294677734375 476
; [HW: 1.7914848239593703649319422765984199941158294677734375 476] 

; mpf : + 3564530758252823 476
; mpfd: + 3564530758252823 476 (3.49535e+143) class: Pos. norm. non-zero
; hwf : + 3564530758252823 476 (3.49535e+143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011011 #b1100101010011110101111111101101000101111100100010111)))
(assert (= r (fp #b0 #b10111011011 #b1100101010011110101111111101101000101111100100010111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
