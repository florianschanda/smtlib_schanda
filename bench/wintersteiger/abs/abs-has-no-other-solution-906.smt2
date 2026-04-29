(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.719818505078595904933536075986921787261962890625p-930 {+ 3241774351246352 -930 (1.8949e-280)}
; 1.719818505078595904933536075986921787261962890625p-930 | == 1.719818505078595904933536075986921787261962890625p-930
; [HW: 1.719818505078595904933536075986921787261962890625p-930] 

; mpf : + 3241774351246352 -930
; mpfd: + 3241774351246352 -930 (1.8949e-280) class: Pos. norm. non-zero
; hwf : + 3241774351246352 -930 (1.8949e-280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001011101 #b1011100001000110000001101000101001011110010000010000)))
(assert (= r (fp #b0 #b00001011101 #b1011100001000110000001101000101001011110010000010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
