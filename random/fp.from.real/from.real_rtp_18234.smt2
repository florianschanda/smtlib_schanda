(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; on low bound (exclusive)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A4582B6)))
;; x should be Float32(0x4A4582B6 [Rational(6472027, 2), 3236013.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 12944053.0 4.0))))
;; w should be Float32(0x4A4582B5 [Rational(12944053, 4), 3236013.250000])

(assert (distinct x w))
(check-sat)
(exit)
