(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5669451830161786887174457660876214504241943359375p711 {+ 2553294114971160 711 (1.68803e+214)}
; Y = -1.2762532492704223852086897750268690288066864013671875p-809 {- 1244134030474163 -809 (-3.73827e-244)}
; 1.5669451830161786887174457660876214504241943359375p711 / -1.2762532492704223852086897750268690288066864013671875p-809 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000110 #b1001000100100011010100011100101110101101111000011000)))
(assert (= y (fp #b1 #b00011010110 #b0100011010111000100010000110111100000111101110110011)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
