(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3918069809033182249180526923737488687038421630859375p572 {+ 1764541773197343 572 (2.15148e+172)}
; Y = 1.055460980862185760287275115842930972576141357421875p-905 {+ 249774052744542 -905 (3.90208e-273)}
; 1.3918069809033182249180526923737488687038421630859375p572 > 1.055460980862185760287275115842930972576141357421875p-905 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111011 #b0110010001001101011101100101100101010011000000011111)))
(assert (= y (fp #b0 #b00001110110 #b0000111000110010101100001101101100000001110101011110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
