(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x805609F8)))
;; x should be Float32(0x805609F8 [Rational(-704831, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 2514921283406553997485946889874559579412967516779569.0 318286871302263450979444638813965337664291936510302539161896945211622078088021360341155840.0)))))
;; w should be Float32(0x805609F8 [Rational(-704831, 89202980794122492566142873090593446023921664), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
