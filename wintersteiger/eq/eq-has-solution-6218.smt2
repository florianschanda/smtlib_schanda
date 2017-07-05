(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7923877260736638117322172547574155032634735107421875p-941 {+ 3568597067878307 -941 (9.64286e-284)}
; Y = -1.6430428739305733554232347159995697438716888427734375p-266 {- 2896007647416983 -266 (-1.3857e-080)}
; 1.7923877260736638117322172547574155032634735107421875p-941 = -1.6430428739305733554232347159995697438716888427734375p-266 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001010010 #b1100101011011001111011000000100100111100111110100011)))
(assert (= y (fp #b1 #b01011110101 #b1010010010011110011101010011000101110101001010010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
