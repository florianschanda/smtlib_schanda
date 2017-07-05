(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4175141566618612021244416609988547861576080322265625p-61 {- 1880316600364265 -61 (-6.14749e-019)}
; Y = -1.5335756849396784406991400828701443970203399658203125p-375 {- 2403011255868293 -375 (-1.99277e-113)}
; -1.4175141566618612021244416609988547861576080322265625p-61 M -1.5335756849396784406991400828701443970203399658203125p-375 == -1.5335756849396784406991400828701443970203399658203125p-375
; [HW: -1.5335756849396784406991400828701443970203399658203125p-375] 

; mpf : - 2403011255868293 -375
; mpfd: - 2403011255868293 -375 (-1.99277e-113) class: Neg. norm. non-zero
; hwf : - 2403011255868293 -375 (-1.99277e-113) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111000010 #b0110101011100010001101010011000001111010110011101001)))
(assert (= y (fp #b1 #b01010001000 #b1000100010011000011010101000010011000001101110000101)))
(assert (= r (fp #b1 #b01010001000 #b1000100010011000011010101000010011000001101110000101)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
