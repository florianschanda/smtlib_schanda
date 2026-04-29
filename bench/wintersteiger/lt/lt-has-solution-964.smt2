(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.40152700376456618158726996625773608684539794921875p-668 {+ 1808316864533292 -668 (1.14436e-201)}
; Y = -1.24354702291375485145863422076217830181121826171875p831 {- 1096838281641580 831 (-1.78069e+250)}
; 1.40152700376456618158726996625773608684539794921875p-668 < -1.24354702291375485145863422076217830181121826171875p831 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100011 #b0110011011001010011110010100010110100001001100101100)))
(assert (= y (fp #b1 #b11100111110 #b0011111001011001000110010000001001110011111001101100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
