(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4245916561095430807881712098605930805206298828125p511 {- 1912190824239560 511 (-9.55033e+153)}
; -1.4245916561095430807881712098605930805206298828125p511 | == 1.4245916561095430807881712098605930805206298828125p511
; [HW: 1.4245916561095430807881712098605930805206298828125p511] 

; mpf : + 1912190824239560 511
; mpfd: + 1912190824239560 511 (9.55033e+153) class: Pos. norm. non-zero
; hwf : + 1912190824239560 511 (9.55033e+153) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111110 #b0110110010110010000010011110110100100101000111001000)))
(assert (= r (fp #b0 #b10111111110 #b0110110010110010000010011110110100100101000111001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
