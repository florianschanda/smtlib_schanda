(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5014397897762166156354624035884626209735870361328125p-946 {+ 2258284050384909 -946 (2.52425e-285)}
; Y = 1.7510145706090549655442600851529277861118316650390625p788 {+ 3382268940344753 788 (2.85053e+237)}
; 1.5014397897762166156354624035884626209735870361328125p-946 < 1.7510145706090549655442600851529277861118316650390625p788 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001101 #b1000000001011110010110111010101000000000100000001101)))
(assert (= y (fp #b0 #b11100010011 #b1100000001000010011111011010101110010101110110110001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
