(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9060929156997161726394551806151866912841796875p143 {+ 4080679717508288 143 (2.12536e+043)}
; 1.9060929156997161726394551806151866912841796875p143 | == 1.9060929156997161726394551806151866912841796875p143
; [HW: 1.9060929156997161726394551806151866912841796875p143] 

; mpf : + 4080679717508288 143
; mpfd: + 4080679717508288 143 (2.12536e+043) class: Pos. norm. non-zero
; hwf : + 4080679717508288 143 (2.12536e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001110 #b1110011111110101101101001001000000010001010011000000)))
(assert (= r (fp #b0 #b10010001110 #b1110011111110101101101001001000000010001010011000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
