(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0075980058790097171339539272594265639781951904296875p757 {+ 34218376445467 757 (7.63825e+227)}
; Y = -1.9509104129348127099063958667102269828319549560546875p1017 {- 4282519781355947 1017 (-2.73995e+306)}
; 1.0075980058790097171339539272594265639781951904296875p757 - -1.9509104129348127099063958667102269828319549560546875p1017 == 1.9509104129348127099063958667102269828319549560546875p1017
; [HW: 1.9509104129348127099063958667102269828319549560546875p1017] 

; mpf : + 4282519781355947 1017
; mpfd: + 4282519781355947 1017 (2.73995e+306) class: Pos. norm. non-zero
; hwf : + 4282519781355947 1017 (2.73995e+306) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110100 #b0000000111110001111100010110001011000011111000011011)))
(assert (= y (fp #b1 #b11111111000 #b1111001101101110110111010110010011111011000110101011)))
(assert (= r (fp #b0 #b11111111000 #b1111001101101110110111010110010011111011000110101011)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
