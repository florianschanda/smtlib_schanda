(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.293993604336703295842880834243260324001312255859375p-411 {+ 1324029486940086 -411 (2.44683e-124)}
; Y = -1.684341498304987805312293858150951564311981201171875p23 {- 3082000116760510 23 (-1.41293e+007)}
; 1.293993604336703295842880834243260324001312255859375p-411 < -1.684341498304987805312293858150951564311981201171875p23 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001100100 #b0100101101000011001010100011001111011011111110110110)))
(assert (= y (fp #b1 #b10000010110 #b1010111100110001000000010010001010000011111110111110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
