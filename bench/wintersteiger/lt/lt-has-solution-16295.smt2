(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1392668245752617384169980141450650990009307861328125p96 {+ 627202019262221 96 (9.0262e+028)}
; Y = -1.3088006927523234690369235977414064109325408935546875p-162 {- 1390714684811115 -162 (-2.23879e-049)}
; 1.1392668245752617384169980141450650990009307861328125p96 < -1.3088006927523234690369235977414064109325408935546875p-162 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011111 #b0010001110100110111111011001100011110111111100001101)))
(assert (= y (fp #b1 #b01101011101 #b0100111100001101100011111110110001011010011101101011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
