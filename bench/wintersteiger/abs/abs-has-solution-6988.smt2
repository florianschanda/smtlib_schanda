(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.912057243598700662090550395078025758266448974609375p-655 {- 4107540662411670 -655 (-1.27895e-197)}
; -1.912057243598700662090550395078025758266448974609375p-655 | == 1.912057243598700662090550395078025758266448974609375p-655
; [HW: 1.912057243598700662090550395078025758266448974609375p-655] 

; mpf : + 4107540662411670 -655
; mpfd: + 4107540662411670 -655 (1.27895e-197) class: Pos. norm. non-zero
; hwf : + 4107540662411670 -655 (1.27895e-197) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110000 #b1110100101111100100101010110000101010110000110010110)))
(assert (= r (fp #b0 #b00101110000 #b1110100101111100100101010110000101010110000110010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
