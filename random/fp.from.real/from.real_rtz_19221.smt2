(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; on high bound (exclusive)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010001 #b11100110100111110110000)))
;; x should be Float32(0x48F34FB0 [Rational(996603, 2), 498301.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 15945649.0 32.0))))
;; w should be Float32(0x48F34FB1 [Rational(15945649, 32), 498301.531250])

(assert (distinct x w))
(check-sat)
(exit)
