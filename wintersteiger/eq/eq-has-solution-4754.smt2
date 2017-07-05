(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6424439688133443127071586786769330501556396484375p917 {+ 2893310418554200 917 (1.81969e+276)}
; Y = -1.6154382367106687734548131629708223044872283935546875p381 {- 2771687413519723 381 (-7.95644e+114)}
; 1.6424439688133443127071586786769330501556396484375p917 = -1.6154382367106687734548131629708223044872283935546875p381 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110010100 #b1010010001110111001101010011101110010000110101011000)))
(assert (= y (fp #b1 #b10101111100 #b1001110110001101010111000011101101100001010101101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
