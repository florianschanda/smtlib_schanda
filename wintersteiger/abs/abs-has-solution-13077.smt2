(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.512129932756730799070510329329408705234527587890625p-31 {- 2306428174328490 -31 (-7.0414e-010)}
; -1.512129932756730799070510329329408705234527587890625p-31 | == 1.512129932756730799070510329329408705234527587890625p-31
; [HW: 1.512129932756730799070510329329408705234527587890625p-31] 

; mpf : + 2306428174328490 -31
; mpfd: + 2306428174328490 -31 (7.0414e-010) class: Pos. norm. non-zero
; hwf : + 2306428174328490 -31 (7.0414e-010) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111100000 #b1000001100011010111100101000000001111110001010101010)))
(assert (= r (fp #b0 #b01111100000 #b1000001100011010111100101000000001111110001010101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
