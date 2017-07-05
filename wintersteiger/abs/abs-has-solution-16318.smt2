(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2516285000931410831270795824821107089519500732421875p119 {+ 1133234019255267 119 (8.3185e+035)}
; 1.2516285000931410831270795824821107089519500732421875p119 | == 1.2516285000931410831270795824821107089519500732421875p119
; [HW: 1.2516285000931410831270795824821107089519500732421875p119] 

; mpf : + 1133234019255267 119
; mpfd: + 1133234019255267 119 (8.3185e+035) class: Pos. norm. non-zero
; hwf : + 1133234019255267 119 (8.3185e+035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110110 #b0100000001101010101110011011001010100100001111100011)))
(assert (= r (fp #b0 #b10001110110 #b0100000001101010101110011011001010100100001111100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
