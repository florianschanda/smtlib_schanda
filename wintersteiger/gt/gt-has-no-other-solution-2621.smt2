(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.23920661668287390710929685155861079692840576171875p817 {- 1077290829757548 817 (-1.08305e+246)}
; Y = 1.889515867678901006598835010663606226444244384765625p-137 {+ 4006023330218842 -137 (1.08453e-041)}
; -1.23920661668287390710929685155861079692840576171875p817 > 1.889515867678901006598835010663606226444244384765625p-137 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100110000 #b0011110100111100101001010001001110100011110001101100)))
(assert (= y (fp #b0 #b01101110110 #b1110001110110111010011111101100011110100001101011010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
