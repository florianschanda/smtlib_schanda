(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4702343389047844990358271388686262071132659912109375 93 {- 2117747193468399 93 (-1.45605e+028)}
; -1.4702343389047844990358271388686262071132659912109375 93 I == -1.4702343389047844990358271388686262071132659912109375 93
; [HW: -1.4702343389047844990358271388686262071132659912109375 93] 

; mpf : - 2117747193468399 93
; mpfd: - 2117747193468399 93 (-1.45605e+028) class: Neg. norm. non-zero
; hwf : - 2117747193468399 93 (-1.45605e+028) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001011100 #b0111100001100001010001110001001100001101010111101111)))
(assert (= r (fp #b1 #b10001011100 #b0111100001100001010001110001001100001101010111101111)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
