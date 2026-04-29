(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3037780867915838012294216241571120917797088623046875p-297 {+ 1368094878477899 -297 (5.12029e-090)}
; 1.3037780867915838012294216241571120917797088623046875p-297 S == 1.6147929197216488450550286870566196739673614501953125p-149
; [HW: 1.6147929197216488450550286870566196739673614501953125p-149] 

; mpf : + 2768781164168437 -149
; mpfd: + 2768781164168437 -149 (2.26281e-045) class: Pos. norm. non-zero
; hwf : + 2768781164168437 -149 (2.26281e-045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010110 #b0100110111000100011001101001010000000010111001001011)))
(assert (= r (fp #b0 #b01101101010 #b1001110101100011000100011001110000000100010011110101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
