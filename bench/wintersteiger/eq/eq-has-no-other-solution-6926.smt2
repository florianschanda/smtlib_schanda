(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.47064353714925655225442824303172528743743896484375p-452 {+ 2119590058529724 -452 (1.26459e-136)}
; Y = 1.022851478570831584846700934576801955699920654296875p-659 {+ 102913910376462 -659 (4.27608e-199)}
; 1.47064353714925655225442824303172528743743896484375p-452 = 1.022851478570831584846700934576801955699920654296875p-659 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111011 #b0111100001111100000110000100100000100001001110111100)))
(assert (= y (fp #b0 #b00101101100 #b0000010111011001100110000011000100100000100000001110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
