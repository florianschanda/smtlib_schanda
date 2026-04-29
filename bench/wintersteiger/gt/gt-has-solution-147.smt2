(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3333491400083017364153192829689942300319671630859375p971 {+ 1501271062725663 971 (2.66115e+292)}
; Y = 0.06311644572536234676363164908252656459808349609375p-1022 {+ 284251201449692 -1023 (1.40439e-309)}
; 1.3333491400083017364153192829689942300319671630859375p971 > 0.06311644572536234676363164908252656459808349609375p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111001010 #b0101010101010110010111101000011001111100010000011111)))
(assert (= y (fp #b0 #b00000000000 #b0001000000101000011001100011111000111010111011011100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
