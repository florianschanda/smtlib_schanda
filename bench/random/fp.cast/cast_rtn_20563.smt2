(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x573D7FC8)))
;; x should be Float32(0x573D7FC8 [Rational(208356513939456), 208356513939456.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x402E7AFF900000000000000000000000 [Rational(208356513939456), 208356513939456.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x402E7AFF900000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
