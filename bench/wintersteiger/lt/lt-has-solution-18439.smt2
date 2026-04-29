(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.69822391728376942410250194370746612548828125p866 {- 3144520973700352 866 (-8.35548e+260)}
; Y = -1.510684951992207203375073731876909732818603515625p808 {- 2299920559495824 808 (-2.57876e+243)}
; -1.69822391728376942410250194370746612548828125p866 < -1.510684951992207203375073731876909732818603515625p808 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100001 #b1011001010111110110011010111101000000100110100000000)))
(assert (= y (fp #b1 #b11100100111 #b1000001010111100001111111011111101011101101010010000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
