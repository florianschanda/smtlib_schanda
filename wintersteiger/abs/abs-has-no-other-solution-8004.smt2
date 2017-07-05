(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6231353631087050981562924789614044129848480224609375p-170 {+ 2806352189097743 -170 (1.08456e-051)}
; 1.6231353631087050981562924789614044129848480224609375p-170 | == 1.6231353631087050981562924789614044129848480224609375p-170
; [HW: 1.6231353631087050981562924789614044129848480224609375p-170] 

; mpf : + 2806352189097743 -170
; mpfd: + 2806352189097743 -170 (1.08456e-051) class: Pos. norm. non-zero
; hwf : + 2806352189097743 -170 (1.08456e-051) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010101 #b1001111110000101110011001001010110001000011100001111)))
(assert (= r (fp #b0 #b01101010101 #b1001111110000101110011001001010110001000011100001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
