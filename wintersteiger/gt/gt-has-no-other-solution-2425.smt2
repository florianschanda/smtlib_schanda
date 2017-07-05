(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7345231820677415868203752324916422367095947265625p203 {+ 3307998329055272 203 (2.22982e+061)}
; Y = 1.8611860331653959921283103540190495550632476806640625p-788 {+ 3878437098060353 -788 (1.14328e-237)}
; 1.7345231820677415868203752324916422367095947265625p203 > 1.8611860331653959921283103540190495550632476806640625p-788 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001010 #b1011110000001001101101100001010100100010100000101000)))
(assert (= y (fp #b0 #b00011101011 #b1101110001110110101100000001100000110111101001000001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
