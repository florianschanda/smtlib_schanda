(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0574433753968628391106676644994877278804779052734375p-854 {+ 258701964032215 -854 (8.80321e-258)}
; Y = -1.4224259982236910904163096347474493086338043212890625p719 {- 1902437568191825 719 (-3.9228e+216)}
; 1.0574433753968628391106676644994877278804779052734375p-854 = -1.4224259982236910904163096347474493086338043212890625p719 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010101001 #b0000111010110100100110111110101010110011100011010111)))
(assert (= y (fp #b1 #b11011001110 #b0110110000100100000111000011011101011001110101010001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
