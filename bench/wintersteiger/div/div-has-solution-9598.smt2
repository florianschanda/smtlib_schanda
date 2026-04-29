(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7720008966506528569340161993750371038913726806640625p468 {+ 3476782950485569 468 (1.35052e+141)}
; Y = 1.2832944675818287461055433595902286469936370849609375p-782 {+ 1275844858637647 -782 (5.0451e-236)}
; 1.7720008966506528569340161993750371038913726806640625p468 / 1.2832944675818287461055433595902286469936370849609375p-782 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111010011 #b1100010110100001110110011100101110011000111001000001)))
(assert (= y (fp #b0 #b00011110001 #b0100100010000101111111000111100101100110110101001111)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
