(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7095957784797641831886494401260279119014739990234375p603 {- 3195735283545143 603 (-5.6752e+181)}
; Y = 1.11793542333274320554892256041057407855987548828125p-219 {+ 531133928575124 -219 (1.32693e-066)}
; -1.7095957784797641831886494401260279119014739990234375p603 = 1.11793542333274320554892256041057407855987548828125p-219 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001011010 #b1011010110101000000100011010010111110011010000110111)))
(assert (= y (fp #b0 #b01100100100 #b0001111000110001000001000001001001000001000010010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
