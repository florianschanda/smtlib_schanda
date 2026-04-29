(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8076548879937941460838146667811088263988494873046875p468 {- 3637354252612811 468 (-1.3777e+141)}
; Y = -1.58822072642595291114275823929347097873687744140625p-836 {- 2649110644343524 -836 (-3.46605e-252)}
; -1.8076548879937941460838146667811088263988494873046875p468 / -1.58822072642595291114275823929347097873687744140625p-836 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111010011 #b1100111011000010011110001000001001100011010011001011)))
(assert (= y (fp #b1 #b00010111011 #b1001011010010101101000100010111011010100001011100100)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
