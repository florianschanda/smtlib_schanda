(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1219889420319619777188790976651944220066070556640625p241 {+ 549389353878465 241 (3.96477e+072)}
; 1.1219889420319619777188790976651944220066070556640625p241 S == 1.4979912830400328171975843360996805131435394287109375p120
; [HW: 1.4979912830400328171975843360996805131435394287109375p120] 

; mpf : + 2242753356732847 120
; mpfd: + 2242753356732847 120 (1.99117e+036) class: Pos. norm. non-zero
; hwf : + 2242753356732847 120 (1.99117e+036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011110000 #b0001111100111010101010101101010010000000001111000001)))
(assert (= r (fp #b0 #b10001110111 #b0111111101111100010110110101001001011001100110101111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
