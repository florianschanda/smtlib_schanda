(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4647468404543477760171299451030790805816650390625p-321 {- 2093033697491816 -321 (-3.42874e-097)}
; -1.4647468404543477760171299451030790805816650390625p-321 | == 1.4647468404543477760171299451030790805816650390625p-321
; [HW: 1.4647468404543477760171299451030790805816650390625p-321] 

; mpf : + 2093033697491816 -321
; mpfd: + 2093033697491816 -321 (3.42874e-097) class: Pos. norm. non-zero
; hwf : + 2093033697491816 -321 (3.42874e-097) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010111110 #b0111011011111001101001100010000010101011101101101000)))
(assert (= r (fp #b0 #b01010111110 #b0111011011111001101001100010000010101011101101101000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
