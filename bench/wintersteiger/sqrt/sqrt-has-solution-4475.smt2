(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.672483006603614708041050107567571103572845458984375p586 {+ 3028594217953030 586 (4.23584e+176)}
; 1.672483006603614708041050107567571103572845458984375p586 S == 1.29324514559445180594821067643351852893829345703125p293
; [HW: 1.29324514559445180594821067643351852893829345703125p293] 

; mpf : + 1320658728427380 293
; mpfd: + 1320658728427380 293 (2.05811e+088) class: Pos. norm. non-zero
; hwf : + 1320658728427380 293 (2.05811e+088) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001001 #b1010110000100111110110001010100001111010011100000110)))
(assert (= r (fp #b0 #b10100100100 #b0100101100010010000111010010011000001001111101110100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
