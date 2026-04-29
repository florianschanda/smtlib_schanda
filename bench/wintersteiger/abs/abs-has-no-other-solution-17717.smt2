(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.384688861205899623740833703777752816677093505859375p-792 {- 1732484611980470 -792 (-5.31613e-239)}
; -1.384688861205899623740833703777752816677093505859375p-792 | == 1.384688861205899623740833703777752816677093505859375p-792
; [HW: 1.384688861205899623740833703777752816677093505859375p-792] 

; mpf : + 1732484611980470 -792
; mpfd: + 1732484611980470 -792 (5.31613e-239) class: Pos. norm. non-zero
; hwf : + 1732484611980470 -792 (5.31613e-239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011100111 #b0110001001111010111110000001111000000011110010110110)))
(assert (= r (fp #b0 #b00011100111 #b0110001001111010111110000001111000000011110010110110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
