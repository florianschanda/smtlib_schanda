(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3065055077886824630439832617412321269512176513671875p-374 {- 1380378090664115 -374 (-3.39542e-113)}
; Y = -1.7653698364643464202572431531734764575958251953125p-321 {- 3446919310301448 -321 (-4.13245e-097)}
; -1.3065055077886824630439832617412321269512176513671875p-374 > -1.7653698364643464202572431531734764575958251953125p-321 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001001 #b0100111001110111001001010001101111111111000010110011)))
(assert (= y (fp #b1 #b01010111110 #b1100001111101111010001110001000011110101100100001000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
