(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3436614878951094187442549809929914772510528564453125p-634 {+ 1547713748826005 -634 (1.88483e-191)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.3436614878951094187442549809929914772510528564453125p-634 < +oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110000101 #b0101011111111010001100110000001101100111011110010101)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
