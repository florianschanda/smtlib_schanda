(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.8674131527836406174714056760421954095363616943359375p-818 {- 3906481551652671 -818 (-1.06833e-246)}
; +zero - -1.8674131527836406174714056760421954095363616943359375p-818 == 1.8674131527836406174714056760421954095363616943359375p-818
; [HW: 1.8674131527836406174714056760421954095363616943359375p-818] 

; mpf : + 3906481551652671 -818
; mpfd: + 3906481551652671 -818 (1.06833e-246) class: Pos. norm. non-zero
; hwf : + 3906481551652671 -818 (1.06833e-246) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00011001101 #b1101111000001110110010011101001101010011011100111111)))
(assert (= r (fp #b0 #b00011001101 #b1101111000001110110010011101001101010011011100111111)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
