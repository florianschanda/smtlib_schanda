(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9468679008584637291079388887737877666950225830078125p1018 {- 4264313925475261 1018 (-5.46855e+306)}
; Y = 1.9449099950930073266164299639058299362659454345703125p255 {+ 4255496301799525 255 (1.12603e+077)}
; -1.9468679008584637291079388887737877666950225830078125p1018 < 1.9449099950930073266164299639058299362659454345703125p255 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111111001 #b1111001001100101111011110100101111010001101110111101)))
(assert (= y (fp #b0 #b10011111110 #b1111000111100101100111110001011010010110100001100101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
