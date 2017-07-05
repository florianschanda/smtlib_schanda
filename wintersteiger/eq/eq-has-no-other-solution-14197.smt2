(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.868131679218568930167521102703176438808441162109375p-984 {- 3909717507037270 -984 (-1.14259e-296)}
; Y = -1.287311611322568882798123013344593346118927001953125p871 {- 1293936465691538 871 (-2.0268e+262)}
; -1.868131679218568930167521102703176438808441162109375p-984 = -1.287311611322568882798123013344593346118927001953125p871 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000100111 #b1101111000111101111000001011001011011101100001010110)))
(assert (= y (fp #b1 #b11101100110 #b0100100110001101010000001111011001100100001110010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
