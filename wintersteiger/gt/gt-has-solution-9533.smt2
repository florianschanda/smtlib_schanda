(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.761421312195768695829656280693598091602325439453125p-712 {+ 3429136737876818 -712 (8.17535e-215)}
; Y = -1.42135720519808028683428346994332969188690185546875p626 {- 1897624152319948 626 (-3.95804e+188)}
; 1.761421312195768695829656280693598091602325439453125p-712 > -1.42135720519808028683428346994332969188690185546875p626 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100110111 #b1100001011101100100000011101001001011011101101010010)))
(assert (= y (fp #b1 #b11001110001 #b0110101111011110000100001101100001000010011111001100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
