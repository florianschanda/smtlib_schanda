(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2798827928318037283617059074458666145801544189453125p-28 {- 1260480041504725 -28 (-4.76793e-009)}
; Y = -1.7348693249572761931887043829192407429218292236328125p-656 {- 3309557218043597 -656 (-5.80216e-198)}
; -1.2798827928318037283617059074458666145801544189453125p-28 < -1.7348693249572761931887043829192407429218292236328125p-656 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111100011 #b0100011110100110011001100001000111101100111111010101)))
(assert (= y (fp #b1 #b00101101111 #b1011110000100000011001010110010110000110011011001101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
