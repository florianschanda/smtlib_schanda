(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.419594715001299078949159593321382999420166015625p-526 {+ 1889686602126480 -526 (6.46229e-159)}
; 1.419594715001299078949159593321382999420166015625p-526 | == 1.419594715001299078949159593321382999420166015625p-526
; [HW: 1.419594715001299078949159593321382999420166015625p-526] 

; mpf : + 1889686602126480 -526
; mpfd: + 1889686602126480 -526 (6.46229e-159) class: Pos. norm. non-zero
; hwf : + 1889686602126480 -526 (6.46229e-159) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111110001 #b0110101101101010100011110010101010000001010010010000)))
(assert (= r (fp #b0 #b00111110001 #b0110101101101010100011110010101010000001010010010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
