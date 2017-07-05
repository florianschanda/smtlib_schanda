(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9132021255321725039522107181255705654621124267578125p831 {+ 4112696752260637 831 (2.7396e+250)}
; Y = 1.6363788756820121239599075124715454876422882080078125p103 {+ 2865995667387965 103 (1.65949e+031)}
; 1.9132021255321725039522107181255705654621124267578125p831 = 1.6363788756820121239599075124715454876422882080078125p103 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100111110 #b1110100111000111100111010100111111001100011000011101)))
(assert (= y (fp #b0 #b10001100110 #b1010001011101001101110011101101011101011011000111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
