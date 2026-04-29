(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6568868051670866403668469502008520066738128662109375p-878 {+ 2958355170975087 -878 (8.22161e-265)}
; 1.6568868051670866403668469502008520066738128662109375p-878 | == 1.6568868051670866403668469502008520066738128662109375p-878
; [HW: 1.6568868051670866403668469502008520066738128662109375p-878] 

; mpf : + 2958355170975087 -878
; mpfd: + 2958355170975087 -878 (8.22161e-265) class: Pos. norm. non-zero
; hwf : + 2958355170975087 -878 (8.22161e-265) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010001 #b1010100000101001101110111101000101011101110101101111)))
(assert (= r (fp #b0 #b00010010001 #b1010100000101001101110111101000101011101110101101111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
