(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAE82359)))
;; x should be Float32(0xCAE82359 [Rational(-15213401, 2), -7606700.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xC15D046B20000000 [Rational(-15213401, 2), -7606700.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC15D046B20000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
