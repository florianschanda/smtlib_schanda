(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A19CF72)))
;; x should be Float32(0x4A19CF72 [Rational(5040057, 2), 2520028.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0x4014339EE40000000000000000000000 [Rational(5040057, 2), 2520028.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x4014339EE40000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
