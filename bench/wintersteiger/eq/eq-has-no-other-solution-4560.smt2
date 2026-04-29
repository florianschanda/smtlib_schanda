(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0114179818107873476407121415832079946994781494140625p-235 {+ 51422018628385 -235 (1.83182e-071)}
; Y = -1.2818924402788933747388000483624637126922607421875p-161 {- 1269530688998584 -161 (-4.38553e-049)}
; 1.0114179818107873476407121415832079946994781494140625p-235 = -1.2818924402788933747388000483624637126922607421875p-161 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100010100 #b0000001011101100010010011111001001110110101100100001)))
(assert (= y (fp #b1 #b01101011110 #b0100100000101010000110100101101111111100110010111000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
