(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0957190170859358868682420506956987082958221435546875p-954 {+ 431080129680491 -954 (7.19587e-288)}
; 1.0957190170859358868682420506956987082958221435546875p-954 | == 1.0957190170859358868682420506956987082958221435546875p-954
; [HW: 1.0957190170859358868682420506956987082958221435546875p-954] 

; mpf : + 431080129680491 -954
; mpfd: + 431080129680491 -954 (7.19587e-288) class: Pos. norm. non-zero
; hwf : + 431080129680491 -954 (7.19587e-288) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000101 #b0001100010000001000010101001111111111101010001101011)))
(assert (= r (fp #b0 #b00001000101 #b0001100010000001000010101001111111111101010001101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
