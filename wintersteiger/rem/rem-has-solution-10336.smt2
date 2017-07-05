(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2537556619856455863981636866810731589794158935546875p430 {+ 1142813904761707 430 (3.47625e+129)}
; Y = -1.7492044121958072455669253031373955309391021728515625p-106 {- 3374116711589369 -106 (-2.15606e-032)}
; 1.2537556619856455863981636866810731589794158935546875p430 % -1.7492044121958072455669253031373955309391021728515625p-106 == 1.54534856827564670567198845674283802509307861328125p-108
; [HW: 1.54534856827564670567198845674283802509307861328125p-108] 

; mpf : + 2456031608873236 -108
; mpfd: + 2456031608873236 -108 (4.76197e-033) class: Pos. norm. non-zero
; hwf : + 2456031608873236 -108 (4.76197e-033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110101101 #b0100000011110110001000011000110101100111001101101011)))
(assert (= y (fp #b1 #b01110010101 #b1011111111001011110111000100000001100110010111111001)))
(assert (= r (fp #b0 #b01110010011 #x8b9bf6b9aa114)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
