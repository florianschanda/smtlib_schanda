(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7343582517572608825418001288198865950107574462890625p-576 {+ 3307255548970449 -576 (7.01231e-174)}
; 1.7343582517572608825418001288198865950107574462890625p-576 | == 1.7343582517572608825418001288198865950107574462890625p-576
; [HW: 1.7343582517572608825418001288198865950107574462890625p-576] 

; mpf : + 3307255548970449 -576
; mpfd: + 3307255548970449 -576 (7.01231e-174) class: Pos. norm. non-zero
; hwf : + 3307255548970449 -576 (7.01231e-174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110111111 #b1011101111111110111001110000001011011000010111010001)))
(assert (= r (fp #b0 #b00110111111 #b1011101111111110111001110000001011011000010111010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
