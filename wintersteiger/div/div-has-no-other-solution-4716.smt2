(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9690941717423682266741025159717537462711334228515625p859 {- 4364412150745849 859 (-7.5689e+258)}
; Y = 1.5453589905193216846868153879768215119838714599609375p-948 {+ 2456078546485967 -948 (6.49521e-286)}
; -1.9690941717423682266741025159717537462711334228515625p859 / 1.5453589905193216846868153879768215119838714599609375p-948 == -oo
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
(assert (= x (fp #b1 #b11101011010 #b1111100000010110100011100011111001100000101011111001)))
(assert (= y (fp #b0 #b00001001011 #b1000101110011100101001011001010011011100001011001111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
