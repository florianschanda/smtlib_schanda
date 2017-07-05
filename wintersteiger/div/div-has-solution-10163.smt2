(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.783822408722868235741998432786203920841217041015625p-789 {- 3530022307848954 -789 (-5.47879e-238)}
; Y = 1.5576099987706728544623047127970494329929351806640625p-880 {+ 2511252182681665 -880 (1.93225e-265)}
; -1.783822408722868235741998432786203920841217041015625p-789 / 1.5576099987706728544623047127970494329929351806640625p-880 == -1.1452304557178825117347287232405506074428558349609375p91
; [HW: -1.1452304557178825117347287232405506074428558349609375p91] 

; mpf : - 654059826253903 91
; mpfd: - 654059826253903 91 (-2.83545e+027) class: Neg. norm. non-zero
; hwf : - 654059826253903 91 (-2.83545e+027) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011101010 #b1100100010101000100101011101101101010110001011111010)))
(assert (= y (fp #b0 #b00010001111 #b1000111010111111100001110110010010100100100001000001)))
(assert (= r (fp #b1 #b10001011010 #b0010010100101101110100101011100110110001000001001111)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
