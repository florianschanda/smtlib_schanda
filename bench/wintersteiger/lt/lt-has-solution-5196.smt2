(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8741218603471112569280876414268277585506439208984375p398 {- 3936694884535655 398 (-1.20986e+120)}
; Y = -1.324075262689260679138669729582034051418304443359375p-91 {- 1459505232287350 -91 (-5.3479e-028)}
; -1.8741218603471112569280876414268277585506439208984375p398 < -1.324075262689260679138669729582034051418304443359375p-91 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001101 #b1101111111000110011100110100001011101000110101100111)))
(assert (= y (fp #b1 #b01110100100 #b0101001011110110100110001010111010110001011001110110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
