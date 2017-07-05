(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.215677581195581780093561974354088306427001953125p192 {+ 971325474304592 192 (7.63093e+057)}
; 1.215677581195581780093561974354088306427001953125p192 S == 1.1025776984845927497502771075232885777950286865234375p96
; [HW: 1.1025776984845927497502771075232885777950286865234375p96] 

; mpf : + 461968884671735 96
; mpfd: + 461968884671735 96 (8.73552e+028) class: Pos. norm. non-zero
; hwf : + 461968884671735 96 (8.73552e+028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010111111 #b0011011100110110101001010101110110110111001001010000)))
(assert (= r (fp #b0 #b10001011111 #b0001101001000010100010000011010001001010010011110111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
