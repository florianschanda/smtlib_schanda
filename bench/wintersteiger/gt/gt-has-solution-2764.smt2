(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.90384789974033719062163072521798312664031982421875p-47 {- 4070569064470188 -47 (-1.35277e-014)}
; Y = 1.833314159143695665221684976131655275821685791015625p837 {+ 3752913336602106 837 (1.68013e+252)}
; -1.90384789974033719062163072521798312664031982421875p-47 > 1.833314159143695665221684976131655275821685791015625p837 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010000 #b1110011101100010100100110111000111110001011010101100)))
(assert (= y (fp #b0 #b11101000100 #b1101010101010100000100111010010011010000110111111010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
