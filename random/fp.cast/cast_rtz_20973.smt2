(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b11110001 #b10100110100011110111100)))
;; x should be Float32(0xF8D347BC [Rational(-34282174472726893122359455205294080), -34282174472726893122359455205294080.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0xC71A68F780000000 [Rational(-34282174472726893122359455205294080), -34282174472726893122359455205294080.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10001110001 #b1010011010001111011110000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
