(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1908722457935307925680490370723418891429901123046875p878 {- 859612175031115 878 (-2.39995e+264)}
; Y = 1.0973091045294278700339418719522655010223388671875p1003 {+ 438241246898488 1003 (9.40621e+301)}
; -1.1908722457935307925680490370723418891429901123046875p878 * 1.0973091045294278700339418719522655010223388671875p1003 == -oo
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
(assert (= x (fp #b1 #b11101101101 #b0011000011011101000000001110010101100101101101001011)))
(assert (= y (fp #b0 #b11111101010 #b0001100011101001001111111101110110001110100100111000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
