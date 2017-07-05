(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6078279313758614410545533246477134525775909423828125p-608 {- 2737413645249709 -608 (-1.51357e-183)}
; -1.6078279313758614410545533246477134525775909423828125p-608 | == 1.6078279313758614410545533246477134525775909423828125p-608
; [HW: 1.6078279313758614410545533246477134525775909423828125p-608] 

; mpf : + 2737413645249709 -608
; mpfd: + 2737413645249709 -608 (1.51357e-183) class: Pos. norm. non-zero
; hwf : + 2737413645249709 -608 (1.51357e-183) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110011111 #b1001101110011010100111000111111011011010110010101101)))
(assert (= r (fp #b0 #b00110011111 #b1001101110011010100111000111111011011010110010101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
