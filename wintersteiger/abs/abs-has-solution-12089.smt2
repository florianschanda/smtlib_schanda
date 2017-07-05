(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2653925238480028259147047720034606754779815673828125p-870 {- 1195221671508781 -870 (-1.60742e-262)}
; -1.2653925238480028259147047720034606754779815673828125p-870 | == 1.2653925238480028259147047720034606754779815673828125p-870
; [HW: 1.2653925238480028259147047720034606754779815673828125p-870] 

; mpf : + 1195221671508781 -870
; mpfd: + 1195221671508781 -870 (1.60742e-262) class: Pos. norm. non-zero
; hwf : + 1195221671508781 -870 (1.60742e-262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011001 #b0100001111110000110000111011001010000111101100101101)))
(assert (= r (fp #b0 #b00010011001 #b0100001111110000110000111011001010000111101100101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
