(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9763285255126346040555063154897652566432952880859375p-345 {+ 4396992783689887 -345 (2.75747e-104)}
; Y = -1.44120599539208082973118507652543485164642333984375p-508 {- 1987015156441404 -508 (-1.71984e-153)}
; 1.9763285255126346040555063154897652566432952880859375p-345 > -1.44120599539208082973118507652543485164642333984375p-508 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010100110 #b1111100111110000101010101000111100111010100010011111)))
(assert (= y (fp #b1 #b01000000011 #b0111000011110010111000000100100100000010000100111100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
