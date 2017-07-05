(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7602751927125990238920394403976388275623321533203125p-665 {- 3423975074599493 -665 (-1.14983e-200)}
; -1.7602751927125990238920394403976388275623321533203125p-665 | == 1.7602751927125990238920394403976388275623321533203125p-665
; [HW: 1.7602751927125990238920394403976388275623321533203125p-665] 

; mpf : + 3423975074599493 -665
; mpfd: + 3423975074599493 -665 (1.14983e-200) class: Pos. norm. non-zero
; hwf : + 3423975074599493 -665 (1.14983e-200) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101100110 #b1100001010100001011001010010000010101001001001000101)))
(assert (= r (fp #b0 #b00101100110 #b1100001010100001011001010010000010101001001001000101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
