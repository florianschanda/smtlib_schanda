(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6804407885973364766840632000821642577648162841796875p825 {+ 3064432881974651 825 (3.75984e+248)}
; Y = 1.1267406522289971082528836632263846695423126220703125p-765 {+ 570789154151205 -765 (5.806e-231)}
; 1.6804407885973364766840632000821642577648162841796875p825 / 1.1267406522289971082528836632263846695423126220703125p-765 == +oo
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
(assert (= x (fp #b0 #b11100111000 #b1010111000110001010111100001010111100011110101111011)))
(assert (= y (fp #b0 #b00100000010 #b0010000001110010000100110100110001100101101100100101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
