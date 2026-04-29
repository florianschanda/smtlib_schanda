(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x759C3B36)))
;; x should be Float32(0x759C3B36 [Rational(396093383993566566835937678983168), 396093383993566566835937678983168.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 268502163890829251044720041450808.0))))
;; w should be Float32(0xF553CF95 [Rational(-268502173079838659859373350715392), -268502173079838659859373350715392.000000])

(assert (distinct x w))
(check-sat)
(exit)
