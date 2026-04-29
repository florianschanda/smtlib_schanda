(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0888514556947741507286764317541383206844329833984375p-148 {- 400151382758311 -148 (-3.05161e-045)}
; Y = 1.2330819866943973917017274288809858262538909912109375p-184 {+ 1049707948423663 -184 (5.0289e-056)}
; -1.0888514556947741507286764317541383206844329833984375p-148 > 1.2330819866943973917017274288809858262538909912109375p-184 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101011 #b0001011010111110111110000001000001101001001110100111)))
(assert (= y (fp #b0 #b01101000111 #b0011101110101011010000101101011000100011100111101111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
