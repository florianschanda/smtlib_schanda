(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6812476365901185548779039891087450087070465087890625p-1013 {- 3068066602294289 -1013 (-1.91534e-305)}
; Y = -1.7404328696735780201976240277872420847415924072265625p-248 {- 3334613195954793 -248 (-3.84785e-075)}
; -1.6812476365901185548779039891087450087070465087890625p-1013 * -1.7404328696735780201976240277872420847415924072265625p-248 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000001010 #b1010111001100110001111101011111110100001110000010001)))
(assert (= y (fp #b1 #b01100000111 #b1011110110001101000000100011000000100001101001101001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
