(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2680478800326542287990605473169125616550445556640625p-586 {+ 1207180332632513 -586 (5.00678e-177)}
; Y = -1.374587344163370250527123062056489288806915283203125p811 {- 1686991423591858 811 (-1.87715e+244)}
; 1.2680478800326542287990605473169125616550445556640625p-586 < -1.374587344163370250527123062056489288806915283203125p811 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110101 #b0100010010011110110010010010111010000000100111000001)))
(assert (= y (fp #b1 #b11100101010 #b0101111111100100111101001100100010101101010110110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
