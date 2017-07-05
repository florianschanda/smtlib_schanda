(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4226474709231748949633811207604594528675079345703125p979 {+ 1903434992558693 979 (7.26881e+294)}
; 1.4226474709231748949633811207604594528675079345703125p979 S == 1.6868002080407593634703289353637956082820892333984375p489
; [HW: 1.6868002080407593634703289353637956082820892333984375p489] 

; mpf : + 3093073161010343 489
; mpfd: + 3093073161010343 489 (2.69607e+147) class: Pos. norm. non-zero
; hwf : + 3093073161010343 489 (2.69607e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010010 #b0110110000110010100111111110100101011010001001100101)))
(assert (= r (fp #b0 #b10111101000 #b1010111111010010001000110111000001101011110010100111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
