(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5465029590399581582715882177581079304218292236328125p-26 {+ 2461230522689229 -26 (2.30447e-008)}
; 1.5465029590399581582715882177581079304218292236328125p-26 | == 1.5465029590399581582715882177581079304218292236328125p-26
; [HW: 1.5465029590399581582715882177581079304218292236328125p-26] 

; mpf : + 2461230522689229 -26
; mpfd: + 2461230522689229 -26 (2.30447e-008) class: Pos. norm. non-zero
; hwf : + 2461230522689229 -26 (2.30447e-008) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111100101 #b1000101111100111100111100011000000111110011011001101)))
(assert (= r (fp #b0 #b01111100101 #b1000101111100111100111100011000000111110011011001101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
