(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6551205993380422309968480476527474820613861083984375p932 {- 2950400887061543 932 (-6.00877e+280)}
; Y = -1.591522129098768001398411797708831727504730224609375p635 {- 2663978840190614 635 (-2.26913e+191)}
; -1.6551205993380422309968480476527474820613861083984375p932 = -1.591522129098768001398411797708831727504730224609375p635 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110100011 #b1010011110110101111110111100110100010111110000100111)))
(assert (= y (fp #b1 #b11001111010 #b1001011101101101111111101000011101010110111010010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
