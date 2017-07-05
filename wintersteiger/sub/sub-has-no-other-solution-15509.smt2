(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7046533590350458897688668002956546843051910400390625p-548 {- 3173476605175601 -548 (-1.85011e-165)}
; Y = -1.269883317884882512061039960826747119426727294921875p-864 {- 1215446409859870 -864 (-1.0324e-260)}
; -1.7046533590350458897688668002956546843051910400390625p-548 - -1.269883317884882512061039960826747119426727294921875p-864 == -1.704653359035045667724261875264346599578857421875p-548
; [HW: -1.704653359035045667724261875264346599578857421875p-548] 

; mpf : - 3173476605175600 -548
; mpfd: - 3173476605175600 -548 (-1.85011e-165) class: Neg. norm. non-zero
; hwf : - 3173476605175600 -548 (-1.85011e-165) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011011 #b1011010001100100001010011001110000010010011100110001)))
(assert (= y (fp #b1 #b00010011111 #b0100010100010111000100101011100000001101001100011110)))
(assert (= r (fp #b1 #b00111011011 #b1011010001100100001010011001110000010010011100110000)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
