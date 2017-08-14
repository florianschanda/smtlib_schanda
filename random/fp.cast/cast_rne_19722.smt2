(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b01010001 #b11111101011100100000101)))
;; x should be Float32(0x28FEB905 [Rational(16693509, 590295810358705651712), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x3D1FD720A0000000 [Rational(16693509, 590295810358705651712), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x3D1FD720A0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
