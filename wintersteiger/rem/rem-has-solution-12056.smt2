(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5378917086156136395658222681959159672260284423828125p-593 {+ 2422448898486957 -593 (4.74393e-179)}
; Y = -1.035824178070951173680214196792803704738616943359375p-983 {- 161337755011190 -983 (-1.26707e-296)}
; 1.5378917086156136395658222681959159672260284423828125p-593 % -1.035824178070951173680214196792803704738616943359375p-983 == 1.1986046073493650254704334656707942485809326171875p-984
; [HW: 1.1986046073493650254704334656707942485809326171875p-984] 

; mpf : + 894435635652664 -984
; mpfd: + 894435635652664 -984 (7.33095e-297) class: Pos. norm. non-zero
; hwf : + 894435635652664 -984 (7.33095e-297) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110101110 #b1000100110110011010001010110000101001011001010101101)))
(assert (= y (fp #b1 #b00000101000 #b0000100100101011110001011111100100111000100001110110)))
(assert (= r (fp #b1 #b00000100110 #xbeff971a15168)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
