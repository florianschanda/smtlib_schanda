(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF79C8196)))
;; x should be Float32(0xF79C8196 [Rational(-6348645507770947774891294174740480), -6348645507770947774891294174740480.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC06F39032C0000000000000000000000 [Rational(-6348645507770947774891294174740480), -6348645507770947774891294174740480.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000001101111 #b0011100100000011001011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
