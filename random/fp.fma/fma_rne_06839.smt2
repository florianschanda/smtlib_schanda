(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7FD948EC)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x807BAF18)))
;; y should be Float32(0x807BAF18 [Rational(-1013219, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80586042)))
;; z should be Float32(0x80586042 [Rational(-2895905, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
