(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4017913163451842795126367491320706903934478759765625p-244 {- 1809507222572873 -244 (-4.95866e-074)}
; Y = 1.9168078916928970034661006138776428997516632080078125p-961 {+ 4128935679398461 -961 (9.83451e-290)}
; -1.4017913163451842795126367491320706903934478759765625p-244 M 1.9168078916928970034661006138776428997516632080078125p-961 == 1.9168078916928970034661006138776428997516632080078125p-961
; [HW: 1.9168078916928970034661006138776428997516632080078125p-961] 

; mpf : + 4128935679398461 -961
; mpfd: + 4128935679398461 -961 (9.83451e-290) class: Pos. norm. non-zero
; hwf : + 4128935679398461 -961 (9.83451e-290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001011 #b0110011011011011110010111011001110000100111101001001)))
(assert (= y (fp #b0 #b00000111110 #b1110101010110011111011000000011110001001001000111101)))
(assert (= r (fp #b0 #b00000111110 #b1110101010110011111011000000011110001001001000111101)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
