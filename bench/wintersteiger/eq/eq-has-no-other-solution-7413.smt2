(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8673610472635340240543655454530380666255950927734375p-122 {+ 3906246889251735 -122 (3.51212e-037)}
; Y = -1.8242906198648534132900067561422474682331085205078125p-870 {- 3712274928468349 -870 (-2.31738e-262)}
; 1.8673610472635340240543655454530380666255950927734375p-122 = -1.8242906198648534132900067561422474682331085205078125p-870 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000101 #b1101111000001011010111111010001111010010001110010111)))
(assert (= y (fp #b1 #b00010011001 #b1101001100000100101101011100011010111000000101111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
