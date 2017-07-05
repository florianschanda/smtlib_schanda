(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2752121110002454518195236232713796198368072509765625p-792 {+ 1239445160548553 -792 (4.89582e-239)}
; Y = 1.8519223238367137351900737485266290605068206787109375p798 {+ 3836717060179631 798 (3.08716e+240)}
; 1.2752121110002454518195236232713796198368072509765625p-792 < 1.8519223238367137351900737485266290605068206787109375p798 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011100111 #b0100011001110100010011010000100000110101100011001001)))
(assert (= y (fp #b0 #b11100011101 #b1101101000010111100101001101011110011100011010101111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
