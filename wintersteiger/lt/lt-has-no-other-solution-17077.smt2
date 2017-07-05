(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9636766998811208129183114579063840210437774658203125p-147 {- 4340014026490245 -147 (-1.10068e-044)}
; Y = 1.5090609139960762252741233169217593967914581298828125p-810 {+ 2292606542581613 -810 (2.21009e-244)}
; -1.9636766998811208129183114579063840210437774658203125p-147 < 1.5090609139960762252741233169217593967914581298828125p-810 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101100 #b1111011010110011100001000010010111101000000110000101)))
(assert (= y (fp #b0 #b00011010101 #b1000001001010001110100001110100101001000111101101101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
