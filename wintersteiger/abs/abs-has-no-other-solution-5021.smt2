(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6718097643454914447147530154325067996978759765625p-20 {+ 3025562204370216 -20 (1.59436e-006)}
; 1.6718097643454914447147530154325067996978759765625p-20 | == 1.6718097643454914447147530154325067996978759765625p-20
; [HW: 1.6718097643454914447147530154325067996978759765625p-20] 

; mpf : + 3025562204370216 -20
; mpfd: + 3025562204370216 -20 (1.59436e-006) class: Pos. norm. non-zero
; hwf : + 3025562204370216 -20 (1.59436e-006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111101011 #b1010101111111011101110011000011011111111010100101000)))
(assert (= r (fp #b0 #b01111101011 #b1010101111111011101110011000011011111111010100101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
