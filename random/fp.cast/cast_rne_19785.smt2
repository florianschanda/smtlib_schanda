(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA3B657E)))
;; x should be Float32(0xCA3B657E [Rational(-6140607, 2), -3070303.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC1476CAFC0000000 [Rational(-6140607, 2), -3070303.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC1476CAFC0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
