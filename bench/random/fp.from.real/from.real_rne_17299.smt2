(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A805491)))
;; x should be Float32(0x4A805491 [Rational(8410257, 2), 4205128.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 4205129.0)))
;; w should be Float32(0x4A805492 [Rational(4205129), 4205129.000000])

(assert (distinct x w))
(check-sat)
(exit)
