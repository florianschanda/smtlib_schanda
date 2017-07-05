(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 0.844118170219779084817446346278302371501922607421875p-1022 {+ 3801570276858462 -1023 (1.87823e-308)}
; 0.844118170219779084817446346278302371501922607421875p-1022 | == 0.844118170219779084817446346278302371501922607421875p-1022
; [HW: 0.844118170219779084817446346278302371501922607421875p-1022] 

; mpf : + 3801570276858462 -1023
; mpfd: + 3801570276858462 -1023 (1.87823e-308) class: Pos. denorm.
; hwf : + 3801570276858462 -1023 (1.87823e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1101100000011000001000001101111100001101101001011110)))
(assert (= r (fp #b0 #b00000000000 #b1101100000011000001000001101111100001101101001011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
