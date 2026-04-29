(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2144797279771626374866855258005671203136444091796875p213 {+ 965930822996475 213 (1.59875e+064)}
; Y = 1.359628909242196481699238574947230517864227294921875p-389 {+ 1619624621654814 -389 (1.07833e-117)}
; 1.2144797279771626374866855258005671203136444091796875p213 > 1.359628909242196481699238574947230517864227294921875p-389 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011010100 #b0011011011101000001001001011100101010001000111111011)))
(assert (= y (fp #b0 #b01001111010 #b0101110000010000101000111110001111100100001100011110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
