(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.71077311971246626143283720011822879314422607421875p396 {- 3201037557082028 396 (-2.76103e+119)}
; Y = 1.2748064961147089757531603027018718421459197998046875p-979 {+ 1237618433501195 -979 (2.49505e-295)}
; -1.71077311971246626143283720011822879314422607421875p396 / 1.2748064961147089757531603027018718421459197998046875p-979 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110001011 #b1011010111110101001110100010100000001010011110101100)))
(assert (= y (fp #b0 #b00000101100 #b0100011001011001101101111111000110001010100000001011)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
