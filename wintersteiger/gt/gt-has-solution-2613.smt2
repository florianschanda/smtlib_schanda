(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7773126713687903421856617569574154913425445556640625p-663 {+ 3500705057126849 -663 (4.64383e-200)}
; Y = -1.714975014726656699082241175347007811069488525390625p-773 {- 3219961209902186 -773 (-3.452e-233)}
; 1.7773126713687903421856617569574154913425445556640625p-663 > -1.714975014726656699082241175347007811069488525390625p-773 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101000 #b1100011011111101111101101001011001001011100111000001)))
(assert (= y (fp #b1 #b00011111010 #b1011011100001000100110100100000110110101010001101010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
