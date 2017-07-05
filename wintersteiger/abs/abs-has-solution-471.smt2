(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7540014281309639354589080539881251752376556396484375p60 {+ 3395720550767431 60 (2.02223e+018)}
; 1.7540014281309639354589080539881251752376556396484375p60 | == 1.7540014281309639354589080539881251752376556396484375p60
; [HW: 1.7540014281309639354589080539881251752376556396484375p60] 

; mpf : + 3395720550767431 60
; mpfd: + 3395720550767431 60 (2.02223e+018) class: Pos. norm. non-zero
; hwf : + 3395720550767431 60 (2.02223e+018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000111011 #b1100000100000110001111001101001011110101101101000111)))
(assert (= r (fp #b0 #b10000111011 #b1100000100000110001111001101001011110101101101000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
