(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.37357065915427067892551349359564483165740966796875p-260 {+ 1682412681363724 -260 (7.41399e-079)}
; Y = 1.1085603223571858233498232948477379977703094482421875p-432 {+ 488912227315043 -432 (9.99542e-131)}
; 1.37357065915427067892551349359564483165740966796875p-260 - 1.1085603223571858233498232948477379977703094482421875p-432 == 1.37357065915427067892551349359564483165740966796875p-260
; [HW: 1.37357065915427067892551349359564483165740966796875p-260] 

; mpf : + 1682412681363724 -260
; mpfd: + 1682412681363724 -260 (7.41399e-079) class: Pos. norm. non-zero
; hwf : + 1682412681363724 -260 (7.41399e-079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011111011 #b0101111110100010010100111010001111010000000100001100)))
(assert (= y (fp #b0 #b01001001111 #b0001101111001010100110111111101000101010110101100011)))
(assert (= r (fp #b0 #b01011111011 #b0101111110100010010100111010001111010000000100001100)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
