(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.407053109271252377965311097796075046062469482421875p635 {+ 1833204231234014 635 (2.00612e+191)}
; Y = 1.7150303048277486528405688659404404461383819580078125p373 {+ 3220210214380861 373 (3.29959e+112)}
; 1.407053109271252377965311097796075046062469482421875p635 = 1.7150303048277486528405688659404404461383819580078125p373 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001111010 #b0110100000110100101000011111000000001110000111011110)))
(assert (= y (fp #b0 #b10101110100 #b1011011100001100001110011101111011100010010100111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
