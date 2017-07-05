(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5612323331140574023123690494685433804988861083984375p-930 {- 2527565726280743 -930 (-1.72017e-280)}
; Y = -1.1523517046934212970654698438011109828948974609375p781 {- 686131080486552 781 (-1.46559e+235)}
; -1.5612323331140574023123690494685433804988861083984375p-930 = -1.1523517046934212970654698438011109828948974609375p781 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001011101 #b1000111110101100111011000001010000101110110000100111)))
(assert (= y (fp #b1 #b11100001100 #b0010011100000000100001010111010100100101111010011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
