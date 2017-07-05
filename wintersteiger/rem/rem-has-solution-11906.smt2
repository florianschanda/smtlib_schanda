(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.696329451753523454016203686478547751903533935546875p-642 {+ 3135989059444270 -642 (9.29508e-194)}
; Y = 1.467279713975706112449870488489978015422821044921875p-947 {+ 2104440745738782 -947 (1.23341e-285)}
; 1.696329451753523454016203686478547751903533935546875p-642 % 1.467279713975706112449870488489978015422821044921875p-947 == 1.302693580918383275957239675335586071014404296875p-950
; [HW: 1.302693580918383275957239675335586071014404296875p-950] 

; mpf : + 1363210698231472 -950
; mpfd: + 1363210698231472 -950 (1.36882e-286) class: Pos. norm. non-zero
; hwf : + 1363210698231472 -950 (1.36882e-286) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101111101 #b1011001001000010101001011001111010000101111000101110)))
(assert (= y (fp #b0 #b00001001100 #b0111011110011111101001001011000110011100001000011110)))
(assert (= r (fp #b0 #b00001001001 #x4d7d5396c0eb0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
