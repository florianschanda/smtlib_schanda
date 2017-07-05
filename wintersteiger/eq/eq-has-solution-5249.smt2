(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.239575951134541664799826321541331708431243896484375p127 {+ 1078954164256454 127 (2.10903e+038)}
; Y = -1.5895348304961094410003852317458949983119964599609375p-409 {- 2655028842944207 -409 (-1.20227e-123)}
; 1.239575951134541664799826321541331708431243896484375p127 = -1.5895348304961094410003852317458949983119964599609375p-409 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111110 #b0011110101010100110110010111101100000111111011000110)))
(assert (= y (fp #b1 #b01001100110 #b1001011011101011110000010011000011010101011011001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
