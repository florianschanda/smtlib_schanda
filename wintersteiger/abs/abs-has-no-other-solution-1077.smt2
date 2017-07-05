(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.064793602504232605809875167324207723140716552734375p804 {+ 291804444094054 804 (1.13601e+242)}
; 1.064793602504232605809875167324207723140716552734375p804 | == 1.064793602504232605809875167324207723140716552734375p804
; [HW: 1.064793602504232605809875167324207723140716552734375p804] 

; mpf : + 291804444094054 804
; mpfd: + 291804444094054 804 (1.13601e+242) class: Pos. norm. non-zero
; hwf : + 291804444094054 804 (1.13601e+242) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100100011 #b0001000010010110010100000100001110111110111001100110)))
(assert (= r (fp #b0 #b11100100011 #b0001000010010110010100000100001110111110111001100110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
