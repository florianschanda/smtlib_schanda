(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3192275410874947372263932265923358500003814697265625p509 {+ 1437673035088041 509 (2.21099e+153)}
; Y = -1.86860011587788843456792164943180978298187255859375p-533 {- 3911827158201628 -533 (-6.64552e-161)}
; 1.3192275410874947372263932265923358500003814697265625p509 < -1.86860011587788843456792164943180978298187255859375p-533 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111111100 #b0101000110111000111001010110100011110100000010101001)))
(assert (= y (fp #b1 #b00111101010 #b1101111001011100100100111100001011111111010100011100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
