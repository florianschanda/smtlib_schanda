(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4465001019196106479824948110035620629787445068359375p-1006 {+ 2010857692626047 -1006 (2.10932e-303)}
; Y = -1.889758302519968236055092347669415175914764404296875p-177 {- 4007115159678734 -177 (-9.865e-054)}
; 1.4465001019196106479824948110035620629787445068359375p-1006 m -1.889758302519968236055092347669415175914764404296875p-177 == -1.889758302519968236055092347669415175914764404296875p-177
; [HW: -1.889758302519968236055092347669415175914764404296875p-177] 

; mpf : - 4007115159678734 -177
; mpfd: - 4007115159678734 -177 (-9.865e-054) class: Neg. norm. non-zero
; hwf : - 4007115159678734 -177 (-9.865e-054) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010001 #b0111001001001101110101001010011101100111110001111111)))
(assert (= y (fp #b1 #b01101001110 #b1110001111000111001100110011101010101010111100001110)))
(assert (= r (fp #b1 #b01101001110 #b1110001111000111001100110011101010101010111100001110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
