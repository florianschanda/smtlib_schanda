(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.65993471456165675448346519260667264461517333984375 748 {+ 2972081734588732 748 (2.45769e+225)}
; 1.65993471456165675448346519260667264461517333984375 748 I == 1.65993471456165675448346519260667264461517333984375 748
; [HW: 1.65993471456165675448346519260667264461517333984375 748] 

; mpf : + 2972081734588732 748
; mpfd: + 2972081734588732 748 (2.45769e+225) class: Pos. norm. non-zero
; hwf : + 2972081734588732 748 (2.45769e+225) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101011 #b1010100011110001011110110100000010001001100100111100)))
(assert (= r (fp #b0 #b11011101011 #b1010100011110001011110110100000010001001100100111100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
