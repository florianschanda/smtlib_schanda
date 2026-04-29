(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.9557990035904566639146651141345500946044921875p463 {+ 4304536036411072 463 (4.65814e+139)}
; +zero M 1.9557990035904566639146651141345500946044921875p463 == 1.9557990035904566639146651141345500946044921875p463
; [HW: 1.9557990035904566639146651141345500946044921875p463] 

; mpf : + 4304536036411072 463
; mpfd: + 4304536036411072 463 (4.65814e+139) class: Pos. norm. non-zero
; hwf : + 4304536036411072 463 (4.65814e+139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10111001110 #b1111010010101111001111100101010111111000011011000000)))
(assert (= r (fp #b0 #b10111001110 #b1111010010101111001111100101010111111000011011000000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
