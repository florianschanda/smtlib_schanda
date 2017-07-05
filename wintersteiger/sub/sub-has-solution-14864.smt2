(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7993448527255859747953081750893034040927886962890625p931 {+ 3599929180875473 931 (3.26618e+280)}
; Y = -1.3321377721981193520406350216944701969623565673828125p-722 {- 1495815547107117 -722 (-6.03799e-218)}
; 1.7993448527255859747953081750893034040927886962890625p931 - -1.3321377721981193520406350216944701969623565673828125p-722 == 1.799344852725586196839913100120611488819122314453125p931
; [HW: 1.799344852725586196839913100120611488819122314453125p931] 

; mpf : + 3599929180875474 931
; mpfd: + 3599929180875474 931 (3.26618e+280) class: Pos. norm. non-zero
; hwf : + 3599929180875474 931 (3.26618e+280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100010 #b1100110010100001110111010100000010101110101011010001)))
(assert (= y (fp #b1 #b00100101101 #b0101010100000110111110110010010101011011011100101101)))
(assert (= r (fp #b0 #b11110100010 #b1100110010100001110111010100000010101110101011010010)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
