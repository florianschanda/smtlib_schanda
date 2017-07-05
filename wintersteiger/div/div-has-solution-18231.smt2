(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6649907404374981734207494810107164084911346435546875p-77 {- 2994852050839147 -77 (-1.1018e-023)}
; Y = 1.7530258247095549251071133767254650592803955078125p344 {+ 3391326823562312 344 (6.28213e+103)}
; -1.6649907404374981734207494810107164084911346435546875p-77 / 1.7530258247095549251071133767254650592803955078125p344 == -1.8995621364715005174872430870891548693180084228515625p-422
; [HW: -1.8995621364715005174872430870891548693180084228515625p-422] 

; mpf : - 4051267702609657 -422
; mpfd: - 4051267702609657 -422 (-1.75386e-127) class: Neg. norm. non-zero
; hwf : - 4051267702609657 -422 (-1.75386e-127) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110110010 #b1010101000111100110101010100101001010010011001101011)))
(assert (= y (fp #b0 #b10101010111 #b1100000011000110010011001110101000101011110001001000)))
(assert (= r (fp #b1 #b01001011001 #b1110011001001001101101000100010011011101011011111001)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
