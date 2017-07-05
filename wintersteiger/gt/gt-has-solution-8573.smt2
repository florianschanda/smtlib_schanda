(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1997845465831693534397572875604964792728424072265625p-323 {- 899749609546345 -323 (-7.02125e-098)}
; Y = 1.1939077302998253315990950795821845531463623046875p-710 {+ 873282781922552 -710 (2.21653e-214)}
; -1.1997845465831693534397572875604964792728424072265625p-323 > 1.1939077302998253315990950795821845531463623046875p-710 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010111100 #b0011001100100101000101000111110111010010001001101001)))
(assert (= y (fp #b0 #b00100111001 #b0011000110100011111011111110000000010100010011111000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
