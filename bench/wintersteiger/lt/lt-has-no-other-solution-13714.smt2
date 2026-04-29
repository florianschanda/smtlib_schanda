(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2534292212871791516448638503788970410823822021484375p300 {+ 1141343746553735 300 (2.55328e+090)}
; Y = -0.489788620131033969329337196541018784046173095703125p-1022 {- 2205811847112434 -1023 (-1.08982e-308)}
; 1.2534292212871791516448638503788970410823822021484375p300 < -0.489788620131033969329337196541018784046173095703125p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100101011 #b0100000011100000101111001100100101000111011110000111)))
(assert (= y (fp #b1 #b00000000000 #b0111110101100010110010010111100101101010011011110010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
