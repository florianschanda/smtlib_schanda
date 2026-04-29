(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1887503267218810787397842432255856692790985107421875p-564 {- 850055901090723 -564 (-1.96867e-170)}
; Y = -1.356147315170667777550761456950567662715911865234375p-885 {- 1603944915891622 -885 (-5.25728e-267)}
; -1.1887503267218810787397842432255856692790985107421875p-564 > -1.356147315170667777550761456950567662715911865234375p-885 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001011 #b0011000001010001111100010000000001100001001110100011)))
(assert (= y (fp #b1 #b00010001010 #b0101101100101100011110000110111100110111010110100110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
