(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.90228507842886696010964442393742501735687255859375p-40 {- 4063530742994204 -40 (-1.73012e-012)}
; Y = -1.307778370039347048958688901620917022228240966796875p782 {- 1386110552621902 782 (-3.32652e+235)}
; -1.90228507842886696010964442393742501735687255859375p-40 + -1.307778370039347048958688901620917022228240966796875p782 == -1.307778370039347048958688901620917022228240966796875p782
; [HW: -1.307778370039347048958688901620917022228240966796875p782] 

; mpf : - 1386110552621902 782
; mpfd: - 1386110552621902 782 (-3.32652e+235) class: Neg. norm. non-zero
; hwf : - 1386110552621902 782 (-3.32652e+235) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111010111 #b1110011011111100001001111010011110000101010100011100)))
(assert (= y (fp #b1 #b11100001101 #b0100111011001010100100000011000110111100001101001110)))
(assert (= r (fp #b1 #b11100001101 #b0100111011001010100100000011000110111100001101001110)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
