(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.918806578897164438757272364455275237560272216796875p-951 {- 4137936966346830 -951 (-1.0081e-286)}
; Y = 1.6287562657518226405528594114002771675586700439453125p-797 {+ 2831666484146773 -797 (1.95411e-240)}
; -1.918806578897164438757272364455275237560272216796875p-951 m 1.6287562657518226405528594114002771675586700439453125p-797 == -1.918806578897164438757272364455275237560272216796875p-951
; [HW: -1.918806578897164438757272364455275237560272216796875p-951] 

; mpf : - 4137936966346830 -951
; mpfd: - 4137936966346830 -951 (-1.0081e-286) class: Neg. norm. non-zero
; hwf : - 4137936966346830 -951 (-1.0081e-286) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001001000 #b1110101100110110111010000110111110110110100001001110)))
(assert (= y (fp #b0 #b00011100010 #b1010000011110110001010111010111010001111001001010101)))
(assert (= r (fp #b1 #b00001001000 #b1110101100110110111010000110111110110110100001001110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
