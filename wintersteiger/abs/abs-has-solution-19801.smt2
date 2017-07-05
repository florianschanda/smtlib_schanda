(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.50171949305873653202070272527635097503662109375p204 {- 2259543721983840 204 (-3.86107e+061)}
; -1.50171949305873653202070272527635097503662109375p204 | == 1.50171949305873653202070272527635097503662109375p204
; [HW: 1.50171949305873653202070272527635097503662109375p204] 

; mpf : + 2259543721983840 204
; mpfd: + 2259543721983840 204 (3.86107e+061) class: Pos. norm. non-zero
; hwf : + 2259543721983840 204 (3.86107e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011001011 #b1000000001110000101100000100111001110011111101100000)))
(assert (= r (fp #b0 #b10011001011 #b1000000001110000101100000100111001110011111101100000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
