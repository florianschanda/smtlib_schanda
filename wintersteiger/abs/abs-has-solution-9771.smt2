(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.582602828932687000218493267311714589595794677734375p165 {+ 2623809883286246 165 (7.40153e+049)}
; 1.582602828932687000218493267311714589595794677734375p165 | == 1.582602828932687000218493267311714589595794677734375p165
; [HW: 1.582602828932687000218493267311714589595794677734375p165] 

; mpf : + 2623809883286246 165
; mpfd: + 2623809883286246 165 (7.40153e+049) class: Pos. norm. non-zero
; hwf : + 2623809883286246 165 (7.40153e+049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010100100 #b1001010100100101011101011000000011010010101011100110)))
(assert (= r (fp #b0 #b10010100100 #b1001010100100101011101011000000011010010101011100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
