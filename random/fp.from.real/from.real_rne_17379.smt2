(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4E0040B1)))
;; x should be Float32(0x4E0040B1 [Rational(537930816), 537930816.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 537930849.0)))
;; w should be Float32(0x4E0040B2 [Rational(537930880), 537930880.000000])

(assert (distinct x w))
(check-sat)
(exit)
