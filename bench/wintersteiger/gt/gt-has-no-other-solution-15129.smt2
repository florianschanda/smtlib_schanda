(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.416965661098601447775990891386754810810089111328125p-216 {- 1877846395949954 -216 (-1.34549e-065)}
; Y = -1.674861070226130177474033189355395734310150146484375p943 {- 3039304064397254 943 (-1.24527e+284)}
; -1.416965661098601447775990891386754810810089111328125p-216 > -1.674861070226130177474033189355395734310150146484375p943 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100111 #b0110101010111110010000101111010111111001001110000010)))
(assert (= y (fp #b1 #b11110101110 #b1010110011000011101100011111000111110110111111000110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
