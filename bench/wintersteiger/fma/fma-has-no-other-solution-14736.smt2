(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2255115376573908481105945611489005386829376220703125p561 {+ 1015613676961573 561 (9.25007e+168)}
; Y = 1.1129015728917692751309687082539312541484832763671875p646 {+ 508463481604915 646 (3.24963e+194)}
; Z = -1.2526752151264275436659545448492281138896942138671875p586 {- 1137948004689139 586 (-3.1726e+176)}
; 1.2255115376573908481105945611489005386829376220703125p561 x 1.1129015728917692751309687082539312541484832763671875p646 -1.2526752151264275436659545448492281138896942138671875p586 == +oo
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
(assert (= x (fp #b0 #b11000110000 #b0011100110111011000111111100011100011011111100100101)))
(assert (= y (fp #b0 #b11010000101 #b0001110011100111000111100001001100111100101100110011)))
(assert (= z (fp #b1 #b11001001001 #b0100000010101111010100101010100101111010010011110011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
