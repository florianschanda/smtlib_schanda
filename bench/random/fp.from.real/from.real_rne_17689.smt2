(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8029DDF8)))
;; x should be Float32(0x8029DDF8 [Rational(-342975, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 7832163100280402563377210635407602825458550700830343.0 2037035976334486086268445688409378161051468393665936250636140449354381299763336706183397376.0)))))
;; w should be Float32(0x8029DDF8 [Rational(-342975, 89202980794122492566142873090593446023921664), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
