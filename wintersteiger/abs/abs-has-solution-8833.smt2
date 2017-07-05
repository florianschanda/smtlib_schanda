(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3515913784414992360183305208920501172542572021484375p-44 {- 1583426800935815 -44 (-7.68291e-014)}
; -1.3515913784414992360183305208920501172542572021484375p-44 | == 1.3515913784414992360183305208920501172542572021484375p-44
; [HW: 1.3515913784414992360183305208920501172542572021484375p-44] 

; mpf : + 1583426800935815 -44
; mpfd: + 1583426800935815 -44 (7.68291e-014) class: Pos. norm. non-zero
; hwf : + 1583426800935815 -44 (7.68291e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111010011 #b0101101000000001111001000111111111110110001110000111)))
(assert (= r (fp #b0 #b01111010011 #b0101101000000001111001000111111111110110001110000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
