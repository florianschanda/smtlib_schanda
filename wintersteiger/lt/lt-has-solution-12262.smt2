(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3655987367722826064664332079701125621795654296875p771 {+ 1646510334694776 771 (1.69609e+232)}
; Y = -1.1524184553305139022683079019770957529544830322265625p-942 {- 686431698630889 -942 (-3.09995e-284)}
; 1.3655987367722826064664332079701125621795654296875p771 < -1.1524184553305139022683079019770957529544830322265625p-942 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000010 #b0101110110010111111000001111100111100101010101111000)))
(assert (= y (fp #b1 #b00001010001 #b0010011100000100111001010101100011110011100011101001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
