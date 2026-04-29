(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.099977904784193771803302297485060989856719970703125p71 {- 450260454731378 71 (-2.59725e+021)}
; Y = -1.006386616601748329458132502622902393341064453125p939 {- 28762764147792 939 (-4.67661e+282)}
; -1.099977904784193771803302297485060989856719970703125p71 > -1.006386616601748329458132502622902393341064453125p939 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001000110 #b0001100110011000001001101110011101011110111001110010)))
(assert (= y (fp #b1 #b11110101010 #b0000000110100010100011011010010101101111110001010000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
