(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0339055813462285637882587252533994615077972412109375 831 {- 152697163516655 831 (-1.4805e+250)}
; -1.0339055813462285637882587252533994615077972412109375 831 I == -1.0339055813462285637882587252533994615077972412109375 831
; [HW: -1.0339055813462285637882587252533994615077972412109375 831] 

; mpf : - 152697163516655 831
; mpfd: - 152697163516655 831 (-1.4805e+250) class: Neg. norm. non-zero
; hwf : - 152697163516655 831 (-1.4805e+250) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111110 #b0000100010101110000010010100001100001000101011101111)))
(assert (= r (fp #b1 #b11100111110 #b0000100010101110000010010100001100001000101011101111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
