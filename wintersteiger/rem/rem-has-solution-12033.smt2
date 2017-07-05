(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.98469486762066882334920592256821691989898681640625p234 {- 4434671438890084 234 (-5.47914e+070)}
; Y = 1.78671826235696418194720536121167242527008056640625p122 {+ 3543064073196388 122 (9.49982e+036)}
; -1.98469486762066882334920592256821691989898681640625p234 % 1.78671826235696418194720536121167242527008056640625p122 == -1.127607685063505726930088712833821773529052734375p122
; [HW: -1.127607685063505726930088712833821773529052734375p122] 

; mpf : - 574693922901616 122
; mpfd: - 574693922901616 122 (-5.99539e+036) class: Neg. norm. non-zero
; hwf : - 574693922901616 122 (-5.99539e+036) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101001 #b1111110000010100111101100111110011111000010001100100)))
(assert (= y (fp #b0 #b10001111001 #b1100100101100110010111100011011111111101001101100100)))
(assert (= r (fp #b0 #b10001111000 #x5176f10bd89e8)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
