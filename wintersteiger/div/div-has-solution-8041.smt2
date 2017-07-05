(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6337258339370330784134921486838720738887786865234375p-549 {+ 2854047429573879 -549 (8.86567e-166)}
; Y = 1.7424758115975105265960110045853070914745330810546875p913 {+ 3343813788442155 913 (1.20657e+275)}
; 1.6337258339370330784134921486838720738887786865234375p-549 / 1.7424758115975105265960110045853070914745330810546875p913 == +zero
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
(assert (= x (fp #b0 #b00111011010 #b1010001000111011110110110011001101100011110011110111)))
(assert (= y (fp #b0 #b11110010000 #b1011111000010010111001010001000011100001111000101011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
