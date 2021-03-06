(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10101100 #b01010110001111110101110)))
;; x should be Float32(0xD62B1FAE [Rational(-47038137892864), -47038137892864.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTP x)))
;; y should be Float128(0xC02C563F5C0000000000000000000000 [Rational(-47038137892864), -47038137892864.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xC02C563F5C0000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
