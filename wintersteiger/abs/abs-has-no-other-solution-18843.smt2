(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8911642993407455914933734675287269055843353271484375p228 {- 4013447206436871 228 (-8.15771e+068)}
; -1.8911642993407455914933734675287269055843353271484375p228 | == 1.8911642993407455914933734675287269055843353271484375p228
; [HW: 1.8911642993407455914933734675287269055843353271484375p228] 

; mpf : + 4013447206436871 228
; mpfd: + 4013447206436871 228 (8.15771e+068) class: Pos. norm. non-zero
; hwf : + 4013447206436871 228 (8.15771e+068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011100011 #b1110010000100011010101111111000100001000000000000111)))
(assert (= r (fp #b0 #b10011100011 #b1110010000100011010101111111000100001000000000000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
