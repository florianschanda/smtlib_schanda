(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7540511798416937860878306310041807591915130615234375 252 {+ 3395944612553335 252 (1.26941e+076)}
; 1.7540511798416937860878306310041807591915130615234375 252 I == 1.7540511798416937860878306310041807591915130615234375 252
; [HW: 1.7540511798416937860878306310041807591915130615234375 252] 

; mpf : + 3395944612553335 252
; mpfd: + 3395944612553335 252 (1.26941e+076) class: Pos. norm. non-zero
; hwf : + 3395944612553335 252 (1.26941e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011111011 #b1100000100001001011111111000010011101110001001110111)))
(assert (= r (fp #b0 #b10011111011 #b1100000100001001011111111000010011101110001001110111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
