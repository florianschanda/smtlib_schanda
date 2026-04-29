(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8357758135060890936074429191648960113525390625p1021 {- 3763999642271296 1021 (-4.1252e+307)}
; Y = 1.9280556601671801075781331746838986873626708984375p-260 {+ 4179591125307992 -260 (1.04069e-078)}
; -1.8357758135060890936074429191648960113525390625p1021 > 1.9280556601671801075781331746838986873626708984375p-260 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111111100 #b1101010111110101011001110101100111001011111001000000)))
(assert (= y (fp #b0 #b01011111011 #b1110110110010101000011100100010101001001001001011000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
