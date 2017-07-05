(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4713719855355698040710876739467494189739227294921875p-15 {+ 2122870698410883 -15 (4.49027e-005)}
; Y = 1.6956479773067127947427934486768208444118499755859375p-184 {+ 3132919971379551 -184 (6.91539e-056)}
; 1.4713719855355698040710876739467494189739227294921875p-15 M 1.6956479773067127947427934486768208444118499755859375p-184 == 1.4713719855355698040710876739467494189739227294921875p-15
; [HW: 1.4713719855355698040710876739467494189739227294921875p-15] 

; mpf : + 2122870698410883 -15
; mpfd: + 2122870698410883 -15 (4.49027e-005) class: Pos. norm. non-zero
; hwf : + 2122870698410883 -15 (4.49027e-005) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110000 #b0111100010101011110101011001111000100000001110000011)))
(assert (= y (fp #b0 #b01101000111 #b1011001000010101111111000110000000001111100101011111)))
(assert (= r (fp #b0 #b01111110000 #b0111100010101011110101011001111000100000001110000011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
