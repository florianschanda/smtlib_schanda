(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0153867004215471059325182068278081715106964111328125p361 {+ 69295538284941 361 (4.76936e+108)}
; 1.0153867004215471059325182068278081715106964111328125p361 S == 1.4250520695199504483952068767393939197063446044921875p180
; [HW: 1.4250520695199504483952068767393939197063446044921875p180] 

; mpf : + 1914264341903107 180
; mpfd: + 1914264341903107 180 (2.18389e+054) class: Pos. norm. non-zero
; hwf : + 1914264341903107 180 (2.18389e+054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101000 #b0000001111110000011000011111111100011010100110001101)))
(assert (= r (fp #b0 #b10010110011 #b0110110011010000001101100110000110101111011100000011)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
