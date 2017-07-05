(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.764803947534612671432796560111455619335174560546875p940 {- 3444370773128366 940 (-1.64018e+283)}
; -1.764803947534612671432796560111455619335174560546875p940 | == 1.764803947534612671432796560111455619335174560546875p940
; [HW: 1.764803947534612671432796560111455619335174560546875p940] 

; mpf : + 3444370773128366 940
; mpfd: + 3444370773128366 940 (1.64018e+283) class: Pos. norm. non-zero
; hwf : + 3444370773128366 940 (1.64018e+283) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110101011 #b1100001111001010001100010000011010000011010010101110)))
(assert (= r (fp #b0 #b11110101011 #b1100001111001010001100010000011010000011010010101110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
