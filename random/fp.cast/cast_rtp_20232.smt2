(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49DA006C)))
;; x should be Float32(0x49DA006C [Rational(3571739, 2), 1785869.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x413B400D80000000 [Rational(3571739, 2), 1785869.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x413B400D80000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
