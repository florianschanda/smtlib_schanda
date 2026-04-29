(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.681347722820226930906528650666587054729461669921875p188 {- 3068517350602910 188 (-6.59624e+056)}
; Y = -1.2342186550981673054394605060224421322345733642578125p-762 {- 1054827047823325 -762 (-5.08786e-230)}
; -1.681347722820226930906528650666587054729461669921875p188 > -1.2342186550981673054394605060224421322345733642578125p-762 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010111011 #b1010111001101100110011011110101010110111100010011110)))
(assert (= y (fp #b1 #b00100000101 #b0011101111110101110000001111011111000010011111011101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
