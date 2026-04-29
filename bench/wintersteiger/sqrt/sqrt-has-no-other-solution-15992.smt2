(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.01982981811700401664211312890984117984771728515625p-885 {+ 89305561482564 -885 (3.9535e-267)}
; 1.01982981811700401664211312890984117984771728515625p-885 S == 1.428166529587501454301445846795104444026947021484375p-443
; [HW: 1.428166529587501454301445846795104444026947021484375p-443] 

; mpf : + 1928290623102790 -443
; mpfd: + 1928290623102790 -443 (6.28768e-134) class: Pos. norm. non-zero
; hwf : + 1928290623102790 -443 (6.28768e-134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001010 #b0000010100010011100100010010010001001100010101000100)))
(assert (= r (fp #b0 #b01001000100 #b0110110110011100010100100101100111010001111101000110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
