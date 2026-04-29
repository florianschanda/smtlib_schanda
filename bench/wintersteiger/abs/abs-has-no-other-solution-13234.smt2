(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5562044871974649584700500781764276325702667236328125p-780 {- 2504922321284301 -780 (-2.4472e-235)}
; -1.5562044871974649584700500781764276325702667236328125p-780 | == 1.5562044871974649584700500781764276325702667236328125p-780
; [HW: 1.5562044871974649584700500781764276325702667236328125p-780] 

; mpf : + 2504922321284301 -780
; mpfd: + 2504922321284301 -780 (2.4472e-235) class: Pos. norm. non-zero
; hwf : + 2504922321284301 -780 (2.4472e-235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011110011 #b1000111001100011011010101101001001100110110011001101)))
(assert (= r (fp #b0 #b00011110011 #b1000111001100011011010101101001001100110110011001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
