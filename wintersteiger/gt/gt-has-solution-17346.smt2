(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7712069043663134504384970568935386836528778076171875p302 {- 3473207127129683 302 (-1.4432e+091)}
; Y = -1.9855334813348282096967523102648556232452392578125p904 {- 4438448219300680 904 (-2.6853e+272)}
; -1.7712069043663134504384970568935386836528778076171875p302 > -1.9855334813348282096967523102648556232452392578125p904 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100101101 #b1100010101101101110100001101000010110011111001010011)))
(assert (= y (fp #b1 #b11110000111 #b1111110001001011111011000001011101110010001101001000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
