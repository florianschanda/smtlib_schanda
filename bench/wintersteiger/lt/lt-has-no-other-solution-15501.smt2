(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1369513370673611785122147921356372535228729248046875p-528 {- 616773990584459 -528 (-1.29391e-159)}
; Y = 1.820631615575536432771741601754911243915557861328125p-611 {+ 3695796238114434 -611 (2.14237e-184)}
; -1.1369513370673611785122147921356372535228729248046875p-528 < 1.820631615575536432771741601754911243915557861328125p-611 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111101111 #b0010001100001111001111100010100111011001000010001011)))
(assert (= y (fp #b0 #b00110011100 #b1101001000010100111010011101111011110101111010000010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
