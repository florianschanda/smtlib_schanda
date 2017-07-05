(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1786841361607518496867896828916855156421661376953125p826 {+ 804721809030581 826 (5.27441e+248)}
; Y = -1.05428074746680788820185625809244811534881591796875p823 {- 244458754064908 823 (-5.89716e+247)}
; 1.1786841361607518496867896828916855156421661376953125p826 < -1.05428074746680788820185625809244811534881591796875p823 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100111001 #b0010110110111110001111100101100100011111110110110101)))
(assert (= y (fp #b1 #b11100110110 #b0000110111100101010101111101001100101100001000001100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
