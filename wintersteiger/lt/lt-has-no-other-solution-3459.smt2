(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.857274405079923251804530082154087722301483154296875p-646 {+ 3860820691272206 -646 (6.36061e-195)}
; Y = 1.98385175363239429913164713070727884769439697265625p-473 {+ 4430874391046660 -473 (8.13432e-143)}
; 1.857274405079923251804530082154087722301483154296875p-646 < 1.98385175363239429913164713070727884769439697265625p-473 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111001 #b1101101101110110010101011101110110000100001000001110)))
(assert (= y (fp #b0 #b01000100110 #b1111101111011101101101010110000111110110101000000100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
