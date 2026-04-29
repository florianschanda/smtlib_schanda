(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.481436987260087878581771292374469339847564697265625p-649 {+ 2168199436426906 -649 (6.34185e-196)}
; Y = -1.11541044354561424967187122092582285404205322265625p955 {- 519762430546692 955 (-3.39688e+287)}
; 1.481436987260087878581771292374469339847564697265625p-649 / -1.11541044354561424967187122092582285404205322265625p955 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101110110 #b0111101100111111011101000101001101011101111010011010)))
(assert (= y (fp #b1 #b11110111010 #b0001110110001011100010011111000010100101001100000100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
