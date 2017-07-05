(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.332560878834197826137142328661866486072540283203125p-822 {- 1497721049995698 -822 (-4.76465e-248)}
; Y = -1.5242643985195865052872932210448198020458221435546875p425 {- 2361076949816427 425 (-1.32071e+128)}
; -1.332560878834197826137142328661866486072540283203125p-822 m -1.5242643985195865052872932210448198020458221435546875p425 == -1.5242643985195865052872932210448198020458221435546875p425
; [HW: -1.5242643985195865052872932210448198020458221435546875p425] 

; mpf : - 2361076949816427 425
; mpfd: - 2361076949816427 425 (-1.32071e+128) class: Neg. norm. non-zero
; hwf : - 2361076949816427 425 (-1.32071e+128) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011001001 #b0101010100100010101101011011001010000101100110110010)))
(assert (= y (fp #b1 #b10110101000 #b1000011000110110001100010000111000011001010001101011)))
(assert (= r (fp #b1 #b10110101000 #b1000011000110110001100010000111000011001010001101011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
