(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.629195613934249831089573490316979587078094482421875p-696 {+ 2833645132457438 -696 (4.9556e-210)}
; Y = -1.76011551529274878902242562617175281047821044921875p-402 {- 3423255951430956 -402 (-1.70405e-121)}
; 1.629195613934249831089573490316979587078094482421875p-696 > -1.76011551529274878902242562617175281047821044921875p-402 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101000111 #b1010000100010010111101101011100010100010010111011110)))
(assert (= y (fp #b1 #b01001101101 #b1100001010010110111011100010111101011101010100101100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
