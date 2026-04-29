(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0139848920400620357895604684017598628997802734375p317 {+ 62982354580440 317 (2.70732e+095)}
; Y = -1.22817957924796861135519066010601818561553955078125p261 {- 1027629468074708 261 (-4.55083e+078)}
; Z = +oo {+ 0 1024 (1.#INF)}
; 1.0139848920400620357895604684017598628997802734375p317 x -1.22817957924796861135519066010601818561553955078125p261 +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111100 #b0000001110010100100000111000110111110011001111011000)))
(assert (= y (fp #b1 #b10100000100 #b0011101001101001111110100001011001111100001011010100)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
