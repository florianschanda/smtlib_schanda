(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.414304395184767582094309545936994254589080810546875p-64 {+ 1865861119772078 -64 (7.66696e-020)}
; Y = 1.717509298508507864511329898959957063198089599609375p279 {+ 3231374609397782 279 (1.66828e+084)}
; 1.414304395184767582094309545936994254589080810546875p-64 = 1.717509298508507864511329898959957063198089599609375p279 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110111111 #b0110101000001111110110100101001111101000010110101110)))
(assert (= y (fp #b0 #b10100010110 #b1011011110101110101100000111101110101011100000010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
