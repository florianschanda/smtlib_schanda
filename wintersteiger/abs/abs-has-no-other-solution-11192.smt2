(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7816615510449647086232971560093574225902557373046875p-819 {+ 3520290670015947 -819 (5.09634e-247)}
; 1.7816615510449647086232971560093574225902557373046875p-819 | == 1.7816615510449647086232971560093574225902557373046875p-819
; [HW: 1.7816615510449647086232971560093574225902557373046875p-819] 

; mpf : + 3520290670015947 -819
; mpfd: + 3520290670015947 -819 (5.09634e-247) class: Pos. norm. non-zero
; hwf : + 3520290670015947 -819 (5.09634e-247) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011001100 #b1100100000011010111110001010111001000111010111001011)))
(assert (= r (fp #b0 #b00011001100 #b1100100000011010111110001010111001000111010111001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
