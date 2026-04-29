(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.252524777321350146763734301202930510044097900390625p-828 {+ 1137270493046250 -828 (6.99761e-250)}
; Y = -1.6885011729799099811089035938493907451629638671875p-454 {- 3100733626076472 -454 (-3.62981e-137)}
; 1.252524777321350146763734301202930510044097900390625p-828 = -1.6885011729799099811089035938493907451629638671875p-454 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011000011 #b0100000010100101011101101011110000000110010111101010)))
(assert (= y (fp #b1 #b01000111001 #b1011000001000001100111001110010100110100110100111000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
