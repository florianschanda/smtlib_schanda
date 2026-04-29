(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7507573476399473921816252186545170843601226806640625p939 {+ 3381110511076929 939 (8.13564e+282)}
; Y = 1.3896630562320793078612268800497986376285552978515625p385 {+ 1754886394846841 385 (1.09511e+116)}
; Z = 1.4961891457161442531287320889532566070556640625p-603 {+ 2234637251752512 -603 (4.50712e-182)}
; 1.7507573476399473921816252186545170843601226806640625p939 x 1.3896630562320793078612268800497986376285552978515625p385 1.4961891457161442531287320889532566070556640625p-603 == +oo
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
(assert (= x (fp #b0 #b11110101010 #b1100000000110001101000100010111101011000011001000001)))
(assert (= y (fp #b0 #b10110000000 #b0110001111000000111101010100001011111001111001111001)))
(assert (= z (fp #b0 #b00110100100 #b0111111100000110010000000111100101111011001001000000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
