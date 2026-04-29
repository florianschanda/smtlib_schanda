(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.142531403356876307242373513872735202312469482421875 685 {+ 641904375046622 685 (1.83407e+206)}
; 1.142531403356876307242373513872735202312469482421875 685 I == 1.142531403356876307242373513872735202312469482421875 685
; [HW: 1.142531403356876307242373513872735202312469482421875 685] 

; mpf : + 641904375046622 685
; mpfd: + 641904375046622 685 (1.83407e+206) class: Pos. norm. non-zero
; hwf : + 641904375046622 685 (1.83407e+206) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010101100 #b0010010001111100111100000010010000010010000111011110)))
(assert (= r (fp #b0 #b11010101100 #b0010010001111100111100000010010000010010000111011110)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
