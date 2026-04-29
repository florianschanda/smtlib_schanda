(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7361059851384885721614637077436782419681549072265625p-857 {+ 3315126640374889 -857 (1.80663e-258)}
; Y = -1.32571203328182019021141968551091849803924560546875p-937 {- 1466876591718092 -937 (-1.14115e-282)}
; 1.7361059851384885721614637077436782419681549072265625p-857 > -1.32571203328182019021141968551091849803924560546875p-937 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100110 #b1011110001110001011100010001110010001111010001101001)))
(assert (= y (fp #b1 #b00001010110 #b0101001101100001110111010010001011011011111011001100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
