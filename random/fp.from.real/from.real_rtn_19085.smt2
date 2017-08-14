(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xAAB3726C)))
;; x should be Float32(0xAAB3726C [Rational(-2940059, 9223372036854775808), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 4400822123.0 23058430092136939520000.0))))
;; w should be Float32(0x2A56E246 [Rational(7041315, 36893488147419103232), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
