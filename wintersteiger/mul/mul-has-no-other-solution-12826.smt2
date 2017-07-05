(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8052739072321040136870351489051245152950286865234375p540 {- 3626631268541687 540 (-6.49742e+162)}
; Y = -1.537986665481070769345706139574758708477020263671875p920 {- 2422876546190846 920 (-1.36317e+277)}
; -1.8052739072321040136870351489051245152950286865234375p540 * -1.537986665481070769345706139574758708477020263671875p920 == +oo
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
(assert (= x (fp #b1 #b11000011011 #b1100111000100110011011100100011111100010010011110111)))
(assert (= y (fp #b1 #b11110010111 #b1000100110111001011111100111110111101100110111111110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
