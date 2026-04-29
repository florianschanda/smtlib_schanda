(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6771529963763505133300668603624217212200164794921875p-824 {+ 3049625982153347 -824 (1.49919e-248)}
; Y = -1.05496961729511351535393259837292134761810302734375p745 {- 247561147966972 745 (-1.95248e+224)}
; 1.6771529963763505133300668603624217212200164794921875p-824 < -1.05496961729511351535393259837292134761810302734375p745 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011000111 #b1010110101011001111001100001010111010011001010000011)))
(assert (= y (fp #b1 #b11011101000 #b0000111000010010011111010010010010001110010111111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
