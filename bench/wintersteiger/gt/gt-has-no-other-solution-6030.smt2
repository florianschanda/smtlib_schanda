(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8048177591478553605242041157907806336879730224609375p-815 {- 3624576960199439 -815 (-8.26013e-246)}
; Y = -1.6237336348241326877683832208276726305484771728515625p736 {- 2809046565372409 736 (-5.86937e+221)}
; -1.8048177591478553605242041157907806336879730224609375p-815 > -1.6237336348241326877683832208276726305484771728515625p736 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010000 #b1100111000001000100010010110001011000111101100001111)))
(assert (= y (fp #b1 #b11011011111 #b1001111110101101000000011110101011111100000111111001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
