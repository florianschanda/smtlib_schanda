(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.348124854157354501893451015348546206951141357421875p-380 {+ 1567814963461470 -380 (5.47434e-115)}
; Y = 1.1089404005533689545615061433636583387851715087890625p-66 {+ 490623947337745 -66 (1.50289e-020)}
; 1.348124854157354501893451015348546206951141357421875p-380 m 1.1089404005533689545615061433636583387851715087890625p-66 == 1.348124854157354501893451015348546206951141357421875p-380
; [HW: 1.348124854157354501893451015348546206951141357421875p-380] 

; mpf : + 1567814963461470 -380
; mpfd: + 1567814963461470 -380 (5.47434e-115) class: Pos. norm. non-zero
; hwf : + 1567814963461470 -380 (5.47434e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010000011 #b0101100100011110101101011101111110000111110101011110)))
(assert (= y (fp #b0 #b01110111101 #b0001101111100011100001001010000110010111000000010001)))
(assert (= r (fp #b0 #b01010000011 #b0101100100011110101101011101111110000111110101011110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
