(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2694758391067153535658462715218774974346160888671875p880 {+ 1213611288586355 880 (1.02334e+265)}
; 1.2694758391067153535658462715218774974346160888671875p880 S == 1.1267101841674793671899124092306010425090789794921875p440
; [HW: 1.1267101841674793671899124092306010425090789794921875p440] 

; mpf : + 570651938200707 440
; mpfd: + 570651938200707 440 (3.19897e+132) class: Pos. norm. non-zero
; hwf : + 570651938200707 440 (3.19897e+132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101111 #b0100010011111100010111100101110000000110100001110011)))
(assert (= r (fp #b0 #b10110110111 #b0010000001110000000101000010000100010001110010000011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
