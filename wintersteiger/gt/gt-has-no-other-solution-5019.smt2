(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.7819593294929807480997396851307712495326995849609375p-135 {+ 3521631744923471 -135 (4.09118e-041)}
; -zero > 1.7819593294929807480997396851307712495326995849609375p-135 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01101111000 #b1100100000101110011111001001001011111001011101001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
