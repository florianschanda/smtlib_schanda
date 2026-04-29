(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9668757093830808724277403598534874618053436279296875p948 {- 4354421084491227 948 (-4.67964e+285)}
; Y = 1.7030764157546636194950906428857706487178802490234375p-684 {+ 3166374684005687 -684 (2.12186e-206)}
; -1.9668757093830808724277403598534874618053436279296875p948 = 1.7030764157546636194950906428857706487178802490234375p-684 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110110011 #b1111011110000101001010101001111100011000110111011011)))
(assert (= y (fp #b0 #b00101010011 #b1011001111111100110100001110010001000001010100110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
