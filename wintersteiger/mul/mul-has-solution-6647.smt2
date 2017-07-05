(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0016150660115907822245162606122903525829315185546875p-389 {- 7273610687979 -389 (-7.94388e-118)}
; Y = -1.398619951252947135600379624520428478717803955078125p-128 {- 1795224663925218 -128 (-4.11017e-039)}
; -1.0016150660115907822245162606122903525829315185546875p-389 * -1.398619951252947135600379624520428478717803955078125p-128 == 1.4008788147993487260833944674232043325901031494140625p-517
; [HW: 1.4008788147993487260833944674232043325901031494140625p-517] 

; mpf : + 1805397680951073 -517
; mpfd: + 1805397680951073 -517 (3.26507e-156) class: Pos. norm. non-zero
; hwf : + 1805397680951073 -517 (3.26507e-156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001111010 #b0000000001101001110110000100111110110011010111101011)))
(assert (= y (fp #b1 #b01101111111 #b0110011000001011111101010000011000101010000111100010)))
(assert (= r (fp #b0 #b00111111010 #b0110011010011111111111100111011100111000111100100001)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
