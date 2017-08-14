(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80000000)))
;; x should be Float32(-zero)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 1.0)))
;; w should be Float32(0x3F800000 [Rational(1), 1.000000])

(assert (distinct x w))
(check-sat)
(exit)
