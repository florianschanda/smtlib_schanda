(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.004009321824344436180354023235850036144256591796875p512 {- 18056380274126 512 (-1.34616e+154)}
; Y = -1.30208101552698085612291833967901766300201416015625p-132 {- 1360451948963012 -132 (-2.39155e-040)}
; -1.004009321824344436180354023235850036144256591796875p512 < -1.30208101552698085612291833967901766300201416015625p-132 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111111 #b0000000100000110110000010100001000011101010111001110)))
(assert (= y (fp #b1 #b01101111011 #b0100110101010101001011100111001001101110010011000100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
