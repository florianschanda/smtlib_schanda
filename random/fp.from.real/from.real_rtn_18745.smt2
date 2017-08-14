(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A9CA5DF)))
;; x should be Float32(0x4A9CA5DF [Rational(10266079, 2), 5133039.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 5133041.0)))
;; w should be Float32(0x4A9CA5E2 [Rational(5133041), 5133041.000000])

(assert (distinct x w))
(check-sat)
(exit)
