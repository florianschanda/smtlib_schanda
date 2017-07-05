(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7197328099805722079196357299224473536014556884765625p-898 {- 3241388414834825 -898 (-8.13813e-271)}
; Y = -1.5411077063403728626411748336977325379848480224609375p792 {- 2436932464641807 792 (-4.01411e+238)}
; -1.7197328099805722079196357299224473536014556884765625p-898 m -1.5411077063403728626411748336977325379848480224609375p792 == -1.5411077063403728626411748336977325379848480224609375p792
; [HW: -1.5411077063403728626411748336977325379848480224609375p792] 

; mpf : - 2436932464641807 792
; mpfd: - 2436932464641807 792 (-4.01411e+238) class: Neg. norm. non-zero
; hwf : - 2436932464641807 792 (-4.01411e+238) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001111101 #b1011100001000000011010001101000010111001100010001001)))
(assert (= y (fp #b1 #b11100010111 #b1000101010000110000010001101111001011000011100001111)))
(assert (= r (fp #b1 #b11100010111 #b1000101010000110000010001101111001011000011100001111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
