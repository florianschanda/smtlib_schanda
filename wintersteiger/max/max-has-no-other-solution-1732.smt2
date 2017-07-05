(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3964813632853119163002020286512561142444610595703125p322 {- 1785593319951077 322 (-1.19315e+097)}
; Y = 1.890544580161464427447981506702490150928497314453125p-37 {+ 4010656239371986 -37 (1.37555e-011)}
; -1.3964813632853119163002020286512561142444610595703125p322 M 1.890544580161464427447981506702490150928497314453125p-37 == 1.890544580161464427447981506702490150928497314453125p-37
; [HW: 1.890544580161464427447981506702490150928497314453125p-37] 

; mpf : + 4010656239371986 -37
; mpfd: + 4010656239371986 -37 (1.37555e-011) class: Pos. norm. non-zero
; hwf : + 4010656239371986 -37 (1.37555e-011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101000001 #b0110010101111111110011010111100011001000101011100101)))
(assert (= y (fp #b0 #b01111011010 #b1110001111111010101110101100011101101100011011010010)))
(assert (= r (fp #b0 #b01111011010 #b1110001111111010101110101100011101101100011011010010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
