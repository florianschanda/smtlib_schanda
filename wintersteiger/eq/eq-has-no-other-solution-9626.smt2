(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.964783204087699797213417696184478700160980224609375p679 {+ 4344997278422678 679 (4.92812e+204)}
; Y = -1.189455285154450425721961437375284731388092041015625p-252 {- 853230751624954 -252 (-1.64357e-076)}
; 1.964783204087699797213417696184478700160980224609375p679 = -1.189455285154450425721961437375284731388092041015625p-252 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010100110 #b1111011011111100000010000011010101001001011010010110)))
(assert (= y (fp #b1 #b01100000011 #b0011000010000000001001000011110111001010111011111010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
