(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.444874125245267038053498254157602787017822265625p655 {+ 2003534944681360 655 (2.16012e+197)}
; Y = -1.652869988356240327220803010277450084686279296875p8 {- 2940265036282544 8 (-423.135)}
; 1.444874125245267038053498254157602787017822265625p655 = -1.652869988356240327220803010277450084686279296875p8 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010001110 #b0111000111100011010001010100101011000011110110010000)))
(assert (= y (fp #b1 #b10000000111 #b1010011100100010011111001101000010000111101010110000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
