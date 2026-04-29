(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.960796979883003832156873613712377846240997314453125p-781 {- 4327044920579794 -781 (-1.54172e-235)}
; Y = -1.30246093263963924613335620961152017116546630859375p-548 {- 1362162943530012 -548 (-1.4136e-165)}
; -1.960796979883003832156873613712377846240997314453125p-781 < -1.30246093263963924613335620961152017116546630859375p-548 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110010 #b1111010111110110110010100111011010110001011011010010)))
(assert (= y (fp #b1 #b00111011011 #b0100110101101110000101000110011000000001010000011100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
