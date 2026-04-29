(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1306108408538200205128987363423220813274383544921875p276 {- 588218934199811 276 (-1.37275e+083)}
; -1.1306108408538200205128987363423220813274383544921875p276 | == 1.1306108408538200205128987363423220813274383544921875p276
; [HW: 1.1306108408538200205128987363423220813274383544921875p276] 

; mpf : + 588218934199811 276
; mpfd: + 588218934199811 276 (1.37275e+083) class: Pos. norm. non-zero
; hwf : + 588218934199811 276 (1.37275e+083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010011 #b0010000101101111101101100100100111111000011000000011)))
(assert (= r (fp #b0 #b10100010011 #b0010000101101111101101100100100111111000011000000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
