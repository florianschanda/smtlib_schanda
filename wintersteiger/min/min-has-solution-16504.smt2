(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6456397114305139073309192099259234964847564697265625p344 {+ 2907702763814057 344 (5.8973e+103)}
; Y = 1.0544613522358072810192197721335105597972869873046875p89 {+ 245272125635275 89 (6.5268e+026)}
; 1.6456397114305139073309192099259234964847564697265625p344 m 1.0544613522358072810192197721335105597972869873046875p89 == 1.0544613522358072810192197721335105597972869873046875p89
; [HW: 1.0544613522358072810192197721335105597972869873046875p89] 

; mpf : + 245272125635275 89
; mpfd: + 245272125635275 89 (6.5268e+026) class: Pos. norm. non-zero
; hwf : + 245272125635275 89 (6.5268e+026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010111 #b1010010101001000101001001110010110010111110010101001)))
(assert (= y (fp #b0 #b10001011000 #b0000110111110001001011011101111010111111101011001011)))
(assert (= r (fp #b0 #b10001011000 #b0000110111110001001011011101111010111111101011001011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
