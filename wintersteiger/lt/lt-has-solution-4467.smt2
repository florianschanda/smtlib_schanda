(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.37397464921224266021226867451332509517669677734375p651 {+ 1684232090838268 651 (1.28383e+196)}
; Y = -1.74832218395191762994045348023064434528350830078125p334 {- 3370143508798932 334 (-6.11843e+100)}
; 1.37397464921224266021226867451332509517669677734375p651 < -1.74832218395191762994045348023064434528350830078125p334 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010001010 #b0101111110111100110011010111011111100110010011111100)))
(assert (= y (fp #b1 #b10101001101 #b1011111110010010000010101110101011110001110111010100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
