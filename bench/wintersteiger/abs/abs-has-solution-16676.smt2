(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3294373289777261515354211951489560306072235107421875p-561 {+ 1483653832026019 -561 (1.76133e-169)}
; 1.3294373289777261515354211951489560306072235107421875p-561 | == 1.3294373289777261515354211951489560306072235107421875p-561
; [HW: 1.3294373289777261515354211951489560306072235107421875p-561] 

; mpf : + 1483653832026019 -561
; mpfd: + 1483653832026019 -561 (1.76133e-169) class: Pos. norm. non-zero
; hwf : + 1483653832026019 -561 (1.76133e-169) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111001110 #b0101010001010110000000010011101000001010011110100011)))
(assert (= r (fp #b0 #b00111001110 #b0101010001010110000000010011101000001010011110100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
