(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2161670215266529027076103375293314456939697265625p-690 {- 973529717597224 -690 (-2.36753e-208)}
; Y = 1.3124398706296027672379977957461960613727569580078125p-991 {+ 1407104084943165 -991 (6.27124e-299)}
; -1.2161670215266529027076103375293314456939697265625p-690 = 1.3124398706296027672379977957461960613727569580078125p-991 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101001101 #b0011011101010110101110001100111111101110010000101000)))
(assert (= y (fp #b0 #b00000100000 #b0100111111111100000011110011001001010010000100111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
