(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xD62B1FAE)))
;; x should be Float32(0xD62B1FAE [Rational(-47038137892864), -47038137892864.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xC2C563F5C0000000 [Rational(-47038137892864), -47038137892864.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC2C563F5C0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
