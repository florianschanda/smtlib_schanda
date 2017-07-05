(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7285500958340465071927383178262971341609954833984375p-452 {+ 3281097940118951 -452 (1.48636e-136)}
; Y = -1.351559116482707878503788379020988941192626953125p374 {- 1583281505990224 374 (-5.2006e+112)}
; 1.7285500958340465071927383178262971341609954833984375p-452 < -1.351559116482707878503788379020988941192626953125p374 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111011 #b1011101010000010010000100101001100011010110110100111)))
(assert (= y (fp #b1 #b10101110101 #b0101100111111111110001110011101111100111011001010000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
