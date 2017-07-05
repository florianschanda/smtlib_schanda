(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3961339041074392053332076102378778159618377685546875p994 {- 1784028502927083 994 (-2.33745e+299)}
; Y = 1.5520436222800084724582347917021252214908599853515625p-213 {+ 2486183451592505 -213 (1.179e-064)}
; -1.3961339041074392053332076102378778159618377685546875p994 - 1.5520436222800084724582347917021252214908599853515625p-213 == -1.3961339041074392053332076102378778159618377685546875p994
; [HW: -1.3961339041074392053332076102378778159618377685546875p994] 

; mpf : - 1784028502927083 994
; mpfd: - 1784028502927083 994 (-2.33745e+299) class: Neg. norm. non-zero
; hwf : - 1784028502927083 994 (-2.33745e+299) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100001 #b0110010101101001000010000001001011111010011011101011)))
(assert (= y (fp #b0 #b01100101010 #b1000110101010010101110110001011110101000011100111001)))
(assert (= r (fp #b1 #b11111100001 #b0110010101101001000010000001001011111010011011101011)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
