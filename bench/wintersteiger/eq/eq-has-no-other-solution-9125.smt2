(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2506134656700453877675727198948152363300323486328125p-428 {+ 1128662710605645 -428 (1.8042e-129)}
; Y = -1.0045060693406993035381447043619118630886077880859375p156 {- 20293532203679 156 (-9.17555e+046)}
; 1.2506134656700453877675727198948152363300323486328125p-428 = -1.0045060693406993035381447043619118630886077880859375p156 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010011 #b0100000000101000001101000011111011111101011101001101)))
(assert (= y (fp #b1 #b10010011011 #b0000000100100111010011110100110001110011101010011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
