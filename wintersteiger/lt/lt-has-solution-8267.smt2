(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.6577699480048817548549777711741626262664794921875p-1022 {+ 2962332492730296 -1023 (1.46359e-308)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 0.6577699480048817548549777711741626262664794921875p-1022 < -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b1010100001100011100111000111111011111000111110111000)))
(assert (= y (_ -oo 11 53)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
