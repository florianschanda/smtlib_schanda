(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.27617962342427215816087482380680739879608154296875p314 {- 1243802449140876 314 (-4.25922e+094)}
; Y = -1.1586030109329474857560171585646457970142364501953125p-457 {- 714284460937461 -457 (-3.11334e-138)}
; -1.27617962342427215816087482380680739879608154296875p314 > -1.1586030109329474857560171585646457970142364501953125p-457 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100111001 #b0100011010110011101101010011001001101101110010001100)))
(assert (= y (fp #b1 #b01000110110 #b0010100010011010001101001111100100000001000011110101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
