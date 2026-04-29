(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4870153323344139639772265581996180117130279541015625p-739 {+ 2193322069224985 -739 (5.1422e-223)}
; 1.4870153323344139639772265581996180117130279541015625p-739 | == 1.4870153323344139639772265581996180117130279541015625p-739
; [HW: 1.4870153323344139639772265581996180117130279541015625p-739] 

; mpf : + 2193322069224985 -739
; mpfd: + 2193322069224985 -739 (5.1422e-223) class: Pos. norm. non-zero
; hwf : + 2193322069224985 -739 (5.1422e-223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011100 #b0111110010101101000010010110110100000110111000011001)))
(assert (= r (fp #b0 #b00100011100 #b0111110010101101000010010110110100000110111000011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
