(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.41536479010372051590138653409667313098907470703125p721 {- 1870636713933940 721 (-1.56133e+217)}
; Y = 1.794329974625991308556649528327398002147674560546875p921 {+ 3577344177734830 921 (3.18074e+277)}
; -1.41536479010372051590138653409667313098907470703125p721 < 1.794329974625991308556649528327398002147674560546875p921 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010000 #b0110101001010101010110001100110101100111110001110100)))
(assert (= y (fp #b0 #b11110011000 #b1100101101011001001101011000111101000000010010101110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
