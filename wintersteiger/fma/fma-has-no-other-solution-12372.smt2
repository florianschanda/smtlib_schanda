(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0088653627588752836885532815358601510524749755859375p314 {- 39926044417375 314 (-3.36707e+094)}
; Y = -1.0624722069637007049180965623236261308193206787109375p770 {- 281349808002735 770 (-6.59803e+231)}
; Z = -1.3277690599693745543419254317996092140674591064453125p376 {- 1476140616341653 376 (-2.04362e+113)}
; -1.0088653627588752836885532815358601510524749755859375p314 x -1.0624722069637007049180965623236261308193206787109375p770 -1.3277690599693745543419254317996092140674591064453125p376 == +oo
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
(assert (= x (fp #b1 #b10100111001 #b0000001001000101000000000001101100011101110101011111)))
(assert (= y (fp #b1 #b11100000001 #b0000111111111110001011011011010111010001011010101111)))
(assert (= z (fp #b1 #b10101110111 #b0101001111101000101011000101000100110101100010010101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
