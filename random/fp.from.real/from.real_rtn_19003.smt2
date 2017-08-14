(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- 250001521724673290404736040598484858807.0))))
;; w should be Float32(0xFF3C148B [Rational(-250001528399669788240675265927217938432), -250001528399669788240675265927217938432.000000])

(assert (distinct x w))
(check-sat)
(exit)
