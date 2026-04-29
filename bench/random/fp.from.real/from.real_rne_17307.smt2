(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 289388229531424482990216558487458357303.0))))
;; w should be Float32(0xFF59B625 [Rational(-289388223562735418160324368461050413056), -289388223562735418160324368461050413056.000000])

(assert (distinct x w))
(check-sat)
(exit)
