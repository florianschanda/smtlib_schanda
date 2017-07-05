(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9398611390105686691498476648121140897274017333984375p-280 {- 4232758275428007 -280 (-9.98555e-085)}
; Y = 1.352815344739888292480145537410862743854522705078125p-67 {+ 1588939055101154 -67 (9.16703e-021)}
; Z = -1.85248606505639745734015377820469439029693603515625p-336 {- 3839255924926532 -336 (-1.32336e-101)}
; -1.9398611390105686691498476648121140897274017333984375p-280 x 1.352815344739888292480145537410862743854522705078125p-67 -1.85248606505639745734015377820469439029693603515625p-336 == -1.853767448804208850532404539990238845348358154296875p-336
; [HW: -1.853767448804208850532404539990238845348358154296875p-336] 

; mpf : - 3845026764295694 -336
; mpfd: - 3845026764295694 -336 (-1.32427e-101) class: Neg. norm. non-zero
; hwf : - 3845026764295694 -336 (-1.32427e-101) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011100111 #b1111000010011010101111010101011011010100111010100111)))
(assert (= y (fp #b0 #b01110111100 #b0101101001010010000110110011111100101111010011100010)))
(assert (= z (fp #b1 #b01010101111 #b1101101000111100100001101101100110110110100001000100)))
(assert (= r (fp #b1 #b01010101111 #b1101101010010000100000001110011100000000111000001110)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
