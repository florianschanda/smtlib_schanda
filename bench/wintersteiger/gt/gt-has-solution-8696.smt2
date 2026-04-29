(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6718936074353492049482383663416840136051177978515625p-785 {+ 3025939800078457 -785 (8.21603e-237)}
; Y = 1.3334339081154882311608389500179328024387359619140625p-670 {+ 1501652824341601 -670 (2.72191e-202)}
; 1.6718936074353492049482383663416840136051177978515625p-785 > 1.3334339081154882311608389500179328024387359619140625p-670 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011101110 #b1010110000000001001110000010111001010011100001111001)))
(assert (= y (fp #b0 #b00101100001 #b0101010101011011111011001011001010111011110001100001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
