(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9522408439388103662537332638748921453952789306640625p244 {+ 4288511509929793 244 (5.5189e+073)}
; 1.9522408439388103662537332638748921453952789306640625p244 S == 1.397226124841219441208295393153093755245208740234375p122
; [HW: 1.397226124841219441208295393153093755245208740234375p122] 

; mpf : + 1788947427816742 122
; mpfd: + 1788947427816742 122 (7.42893e+036) class: Pos. norm. non-zero
; hwf : + 1788947427816742 122 (7.42893e+036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011110011 #b1111001111000110000011100101001010100001111101000001)))
(assert (= r (fp #b0 #b10001111001 #b0110010110110000100111000111111101001111010100100110)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
