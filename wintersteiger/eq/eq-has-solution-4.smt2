(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.64480811937718129911445430479943752288818359375p-426 {+ 2903957606152544 -426 (9.49155e-129)}
; Y = -1.7612497866748053620966629750910215079784393310546875p-721 {- 3428364255604523 -721 (-1.59659e-217)}
; 1.64480811937718129911445430479943752288818359375p-426 = -1.7612497866748053620966629750910215079784393310546875p-721 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010101 #b1010010100010010001001010001100011101011100101100000)))
(assert (= y (fp #b1 #b00100101110 #b1100001011100001010001000001100111011010111100101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
