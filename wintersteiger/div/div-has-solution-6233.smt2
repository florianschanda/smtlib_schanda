(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5172842992845161358417271912912838160991668701171875p-284 {+ 2329641377502355 -284 (4.88144e-086)}
; Y = -1.1351945628282387179552870293264277279376983642578125p27 {- 608862182775773 27 (-1.52363e+008)}
; 1.5172842992845161358417271912912838160991668701171875p-284 / -1.1351945628282387179552870293264277279376983642578125p27 == -1.33658524183231985915654149721376597881317138671875p-311
; [HW: -1.33658524183231985915654149721376597881317138671875p-311] 

; mpf : - 1515845169694444 -311
; mpfd: - 1515845169694444 -311 (-3.20382e-094) class: Neg. norm. non-zero
; hwf : - 1515845169694444 -311 (-3.20382e-094) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011100011 #b1000010001101100101111100110110000101001010010010011)))
(assert (= y (fp #b1 #b10000011010 #b0010001010011100000111000110000111110001101111011101)))
(assert (= r (fp #b1 #b01011001000 #b0101011000101010011100110100110111111100011011101100)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
