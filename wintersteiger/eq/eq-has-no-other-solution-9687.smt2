(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7797421167438136624383560047135688364505767822265625p235 {+ 3511646306412521 235 (9.82666e+070)}
; Y = 1.3831831573802109147663941257633268833160400390625p-564 {+ 1725703524792168 -564 (2.29067e-170)}
; 1.7797421167438136624383560047135688364505767822265625p235 = 1.3831831573802109147663941257633268833160400390625p-564 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011101010 #b1100011110011101001011011110101010111010011111101001)))
(assert (= y (fp #b0 #b00111001011 #b0110001000011000010010101001100101010011011101101000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
