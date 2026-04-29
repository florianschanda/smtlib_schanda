(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3941154739967966946778687997721135616302490234375p-987 {+ 1774938301832920 -987 (1.06584e-297)}
; Y = -1.30145739354983813740318510099314153194427490234375p305 {- 1357643405259132 305 (-8.48357e+091)}
; 1.3941154739967966946778687997721135616302490234375p-987 < -1.30145739354983813740318510099314153194427490234375p305 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000100100 #b0110010011100100110000000110111110101001111011011000)))
(assert (= y (fp #b1 #b10100110000 #b0100110100101100010011111100111001101111000101111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
