(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.66799242288061666528165005729533731937408447265625p406 {- 3008370426771460 406 (-2.75659e+122)}
; -1.66799242288061666528165005729533731937408447265625p406 | == 1.66799242288061666528165005729533731937408447265625p406
; [HW: 1.66799242288061666528165005729533731937408447265625p406] 

; mpf : + 3008370426771460 406
; mpfd: + 3008370426771460 406 (2.75659e+122) class: Pos. norm. non-zero
; hwf : + 3008370426771460 406 (2.75659e+122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110010101 #b1010101100000001100011010010101000111111100000000100)))
(assert (= r (fp #b0 #b10110010101 #b1010101100000001100011010010101000111111100000000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
