(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x28FEB905)))
;; x should be Float32(0x28FEB905 [Rational(16693509, 590295810358705651712), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0x3FD1FD720A0000000000000000000000 [Rational(16693509, 590295810358705651712), 0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x3FD1FD720A0000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
