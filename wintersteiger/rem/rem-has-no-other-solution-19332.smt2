(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6453238200041671035478429985232651233673095703125p-348 {+ 2906280115304072 -348 (2.86954e-105)}
; Y = 1.776017146509030641965409813565202057361602783203125p-981 {+ 3494870531851186 -981 (8.69003e-296)}
; 1.6453238200041671035478429985232651233673095703125p-348 % 1.776017146509030641965409813565202057361602783203125p-981 == 1.3711248193366838421525244484655559062957763671875p-981
; [HW: 1.3711248193366838421525244484655559062957763671875p-981] 

; mpf : + 1671397598072632 -981
; mpfd: + 1671397598072632 -981 (6.7089e-296) class: Pos. norm. non-zero
; hwf : + 1671397598072632 -981 (6.7089e-296) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010100011 #b1010010100110011111100010001111000111111011010001000)))
(assert (= y (fp #b0 #b00000101010 #b1100011010101001000011110100100101100100001110110010)))
(assert (= r (fp #b1 #b00000101000 #x9e9c181e6d1e8)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
