(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5241204882269829834484653474646620452404022216796875p662 {- 2360428835476283 662 (-2.9166e+199)}
; Y = -0.867551316829259899776616293820552527904510498046875p-1022 {- 3907103787197038 -1023 (-1.93037e-308)}
; -1.5241204882269829834484653474646620452404022216796875p662 * -0.867551316829259899776616293820552527904510498046875p-1022 == 1.32225273656777364550407583010382950305938720703125p-360
; [HW: 1.32225273656777364550407583010382950305938720703125p-360] 

; mpf : + 1451297304325748 -360
; mpfd: + 1451297304325748 -360 (5.6301e-109) class: Pos. norm. non-zero
; hwf : + 1451297304325748 -360 (5.6301e-109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010101 #b1000011000101100110000101010010000011001001100111011)))
(assert (= y (fp #b1 #b00000000000 #b1101111000010111110101111101010101100010001001101110)))
(assert (= r (fp #b0 #b01010010111 #b0101001001111111001001111100010010011010111001110100)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
