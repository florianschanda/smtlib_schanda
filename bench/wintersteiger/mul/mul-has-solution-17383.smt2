(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9962488268319622530810875105089507997035980224609375p-307 {- 4486705845288719 -307 (-7.65607e-093)}
; Y = -1.4537420808547236728003326788893900811672210693359375p-935 {- 2043472666259647 -935 (-5.00543e-282)}
; -1.9962488268319622530810875105089507997035980224609375p-307 * -1.4537420808547236728003326788893900811672210693359375p-935 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011001100 #b1111111100001010001010011100000111101011111100001111)))
(assert (= y (fp #b1 #b00001011000 #b0111010000101000011100001110011000010111000010111111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
