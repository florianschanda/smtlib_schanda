(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.336256648174176664412016179994679987430572509765625p-748 {+ 1514365315418074 -748 (9.02512e-226)}
; Y = +oo {+ 0 1024 (1.#INF)}
; Z = -1.347480910389400765581058294628746807575225830078125p955 {- 1564914898548066 955 (-4.10363e+287)}
; 1.336256648174176664412016179994679987430572509765625p-748 x +oo -1.347480910389400765581058294628746807575225830078125p955 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100010011 #b0101011000010100111010100110101011111000011111011010)))
(assert (= y (_ +oo 11 53)))
(assert (= z (fp #b1 #b11110111010 #b0101100011110100100000100100101000011011010101100010)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
