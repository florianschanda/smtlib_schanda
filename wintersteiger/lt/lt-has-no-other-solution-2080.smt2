(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.352644563317276560354684988851658999919891357421875p-192 {+ 1588169923949918 -192 (2.15489e-058)}
; Y = 1.564660366311898531677115897764451801776885986328125p-536 {+ 2543004215313154 -536 (6.95573e-162)}
; 1.352644563317276560354684988851658999919891357421875p-192 < 1.564660366311898531677115897764451801776885986328125p-536 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100111111 #b0101101001000110111010100000001010001111010101011110)))
(assert (= y (fp #b0 #b00111100111 #b1001000010001101100101001110111010101000001100000010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
