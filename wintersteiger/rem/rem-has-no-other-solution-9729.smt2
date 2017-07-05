(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2414714475901027501691942234174348413944244384765625p-467 {- 1087490721387401 -467 (-3.25783e-141)}
; Y = 1.7394905090199099806369531506788916885852813720703125p-246 {+ 3330369180866085 -246 (1.53831e-074)}
; -1.2414714475901027501691942234174348413944244384765625p-467 % 1.7394905090199099806369531506788916885852813720703125p-246 == -1.2414714475901027501691942234174348413944244384765625p-467
; [HW: -1.2414714475901027501691942234174348413944244384765625p-467] 

; mpf : - 1087490721387401 -467
; mpfd: - 1087490721387401 -467 (-3.25783e-141) class: Neg. norm. non-zero
; hwf : - 1087490721387401 -467 (-3.25783e-141) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101100 #b0011110111010001000100101010001001010001001110001001)))
(assert (= y (fp #b0 #b01100001001 #b1011110101001111001111111111111111110001011000100101)))
(assert (= r (fp #b1 #b01000101100 #x3dd112a251389)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
