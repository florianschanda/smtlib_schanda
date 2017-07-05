(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6138459417905230974810137922759167850017547607421875p50 {+ 2764516354710691 50 (1.81703e+015)}
; Y = 1.7500648803642271378322448072140105068683624267578125p90 {+ 3377991915712029 90 (2.16648e+027)}
; 1.6138459417905230974810137922759167850017547607421875p50 m 1.7500648803642271378322448072140105068683624267578125p90 == 1.6138459417905230974810137922759167850017547607421875p50
; [HW: 1.6138459417905230974810137922759167850017547607421875p50] 

; mpf : + 2764516354710691 50
; mpfd: + 2764516354710691 50 (1.81703e+015) class: Pos. norm. non-zero
; hwf : + 2764516354710691 50 (1.81703e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110001 #b1001110100100101000000011111010011000101110010100011)))
(assert (= y (fp #b0 #b10001011001 #b1100000000000100010000001000001100001010111000011101)))
(assert (= r (fp #b0 #b10000110001 #b1001110100100101000000011111010011000101110010100011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
