(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6560552387759488457419365659006871283054351806640625p446 {- 2954610128885825 446 (-3.00921e+134)}
; Y = 1.38121983561234085158275775029323995113372802734375p23 {+ 1716861509609980 23 (1.15865e+007)}
; -1.6560552387759488457419365659006871283054351806640625p446 > 1.38121983561234085158275775029323995113372802734375p23 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111101 #b1010011111110011001111000111001011101001100001000001)))
(assert (= y (fp #b0 #b10000010110 #b0110000110010111100111111000011010001010100111111100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
