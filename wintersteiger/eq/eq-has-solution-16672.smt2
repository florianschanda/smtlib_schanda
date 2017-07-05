(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1862325388946846072002472283202223479747772216796875p-909 {+ 838716792770363 -909 (2.74097e-274)}
; Y = 1.0856084013870452853467440945678390562534332275390625p809 {+ 385545964586481 809 (3.70629e+243)}
; 1.1862325388946846072002472283202223479747772216796875p-909 = 1.0856084013870452853467440945678390562534332275390625p809 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001110010 #b0010111110101100111011111000100000000000111100111011)))
(assert (= y (fp #b0 #b11100101000 #b0001010111101010011011101010010000111000010111110001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
