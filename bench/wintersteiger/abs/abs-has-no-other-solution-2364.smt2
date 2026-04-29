(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.36320498568896031343911090516485273838043212890625p-601 {+ 1635729838207908 -601 (1.64261e-181)}
; 1.36320498568896031343911090516485273838043212890625p-601 | == 1.36320498568896031343911090516485273838043212890625p-601
; [HW: 1.36320498568896031343911090516485273838043212890625p-601] 

; mpf : + 1635729838207908 -601
; mpfd: + 1635729838207908 -601 (1.64261e-181) class: Pos. norm. non-zero
; hwf : + 1635729838207908 -601 (1.64261e-181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110100110 #b0101110011111011000000000111111101000111001110100100)))
(assert (= r (fp #b0 #b00110100110 #b0101110011111011000000000111111101000111001110100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
