(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.45426888787476027431466718553565442562103271484375p-648 {+ 2045845194158780 -648 (1.24511e-195)}
; Y = -1.709443013165244718010171709465794265270233154296875p-873 {- 3195047289731598 -873 (-2.71437e-263)}
; 1.45426888787476027431466718553565442562103271484375p-648 > -1.709443013165244718010171709465794265270233154296875p-873 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110111 #b0111010001001010111101110100000100000011001010111100)))
(assert (= y (fp #b1 #b00010010110 #b1011010110011110000011101010101111101011101000001110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
