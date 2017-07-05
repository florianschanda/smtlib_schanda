(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.402849930788246268775765202008187770843505859375p-696 {- 1814274798184176 -696 (-4.26711e-210)}
; Y = 1.928583943833680702795163597329519689083099365234375p614 {+ 4181970303431590 614 (1.31116e+185)}
; -1.402849930788246268775765202008187770843505859375p-696 < 1.928583943833680702795163597329519689083099365234375p614 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000111 #b0110011100100001001011000100110111101110011011110000)))
(assert (= y (fp #b0 #b11001100101 #b1110110110110111101011010110011001011011001110100110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
