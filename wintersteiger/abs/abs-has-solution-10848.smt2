(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.629371308300531229207308570039458572864532470703125p-501 {+ 2834436389539954 -501 (2.48881e-151)}
; 1.629371308300531229207308570039458572864532470703125p-501 | == 1.629371308300531229207308570039458572864532470703125p-501
; [HW: 1.629371308300531229207308570039458572864532470703125p-501] 

; mpf : + 2834436389539954 -501
; mpfd: + 2834436389539954 -501 (2.48881e-151) class: Pos. norm. non-zero
; hwf : + 2834436389539954 -501 (2.48881e-151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000001010 #b1010000100011110011110100110001000110001000001110010)))
(assert (= r (fp #b0 #b01000001010 #b1010000100011110011110100110001000110001000001110010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
