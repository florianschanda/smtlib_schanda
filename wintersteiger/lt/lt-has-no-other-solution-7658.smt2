(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.001946723747025647099917478044517338275909423828125p175 {+ 8767264341698 175 (4.79837e+052)}
; Y = -1.43531779686989846567257700371555984020233154296875p-500 {- 1960497067771020 -500 (-4.3848e-151)}
; 1.001946723747025647099917478044517338275909423828125p175 < -1.43531779686989846567257700371555984020233154296875p-500 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101110 #b0000000001111111100101001001101011010011111011000010)))
(assert (= y (fp #b1 #b01000001011 #b0110111101110000111111001011010011101100010010001100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
