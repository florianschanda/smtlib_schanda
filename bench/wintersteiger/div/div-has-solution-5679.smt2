(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.886758328025866404686894384212791919708251953125p593 {- 3993604475664976 593 (-6.11651e+178)}
; Y = -1.5927835129125684776596472147502936422824859619140625p-790 {- 2669659607864417 -790 (-2.44602e-238)}
; -1.886758328025866404686894384212791919708251953125p593 / -1.5927835129125684776596472147502936422824859619140625p-790 == +oo
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
(assert (= x (fp #b1 #b11001010000 #b1110001100000010100110000000001001010011101001010000)))
(assert (= y (fp #b1 #b00011101001 #b1001011111000000101010010000100110010001010001100001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
