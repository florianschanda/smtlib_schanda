(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.670504124632007147965850890614092350006103515625p-793 {+ 3019682125843088 -793 (3.20672e-239)}
; Y = -1.367131554357880585115481153479777276515960693359375p418 {- 1653413531402102 418 (-9.2544e+125)}
; 1.670504124632007147965850890614092350006103515625p-793 = -1.367131554357880585115481153479777276515960693359375p418 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011100110 #b1010101110100110001010001000011100100000101010010000)))
(assert (= y (fp #b1 #b10110100001 #b0101110111111100010101010110001101001011111101110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
