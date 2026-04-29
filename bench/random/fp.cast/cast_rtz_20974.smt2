(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF8D347BC)))
;; x should be Float32(0xF8D347BC [Rational(-34282174472726893122359455205294080), -34282174472726893122359455205294080.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC071A68F780000000000000000000000 [Rational(-34282174472726893122359455205294080), -34282174472726893122359455205294080.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000001110001 #b1010011010001111011110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
