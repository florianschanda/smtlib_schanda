(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.935017182590896833715987668256275355815887451171875p161 {+ 4210943035101374 161 (5.65606e+048)}
; Y = 1.7789548944423463350261727100587449967861175537109375p-486 {+ 3508100972348975 -486 (8.90404e-147)}
; 1.935017182590896833715987668256275355815887451171875p161 * 1.7789548944423463350261727100587449967861175537109375p-486 == 1.72115414390005749822876168764196336269378662109375p-324
; [HW: 1.72115414390005749822876168764196336269378662109375p-324] 

; mpf : + 3247789533744988 -324
; mpfd: + 3247789533744988 -324 (5.03618e-098) class: Pos. norm. non-zero
; hwf : + 3247789533744988 -324 (5.03618e-098) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010100000 #b1110111101011101010010010011110001101101000010111110)))
(assert (= y (fp #b0 #b01000011001 #b1100011101101001100101101000010010110000011000101111)))
(assert (= r (fp #b0 #b01010111011 #b1011100010011101100011101101011101101100111101011100)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
