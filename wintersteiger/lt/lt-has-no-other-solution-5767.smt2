(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.110060241612862430571340155438520014286041259765625p-712 {- 495667263115994 -712 (-5.15216e-215)}
; Y = -1.9070631402104394336305404067388735711574554443359375p-745 {- 4085049220253247 -745 (-1.03043e-224)}
; -1.110060241612862430571340155438520014286041259765625p-712 < -1.9070631402104394336305404067388735711574554443359375p-745 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100110111 #b0001110000101100111010000111001001010001001011011010)))
(assert (= y (fp #b1 #b00100010110 #b1110100000110101010010100011101010011100011000111111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
