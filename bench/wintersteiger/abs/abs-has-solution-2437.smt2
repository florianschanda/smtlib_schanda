(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2641199683549573240526342488010413944721221923828125p-226 {+ 1189490591064493 -226 (1.17222e-068)}
; 1.2641199683549573240526342488010413944721221923828125p-226 | == 1.2641199683549573240526342488010413944721221923828125p-226
; [HW: 1.2641199683549573240526342488010413944721221923828125p-226] 

; mpf : + 1189490591064493 -226
; mpfd: + 1189490591064493 -226 (1.17222e-068) class: Pos. norm. non-zero
; hwf : + 1189490591064493 -226 (1.17222e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011101 #b0100001110011101010111011100001001001110000110101101)))
(assert (= r (fp #b0 #b01100011101 #b0100001110011101010111011100001001001110000110101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
