(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.23625384697921969490153060178272426128387451171875p433 {+ 1063992737220460 433 (2.74218e+130)}
; 1.23625384697921969490153060178272426128387451171875p433 | == 1.23625384697921969490153060178272426128387451171875p433
; [HW: 1.23625384697921969490153060178272426128387451171875p433] 

; mpf : + 1063992737220460 433
; mpfd: + 1063992737220460 433 (2.74218e+130) class: Pos. norm. non-zero
; hwf : + 1063992737220460 433 (2.74218e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110110000 #b0011110001111011001000011101001001010100011101101100)))
(assert (= r (fp #b0 #b10110110000 #b0011110001111011001000011101001001010100011101101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
