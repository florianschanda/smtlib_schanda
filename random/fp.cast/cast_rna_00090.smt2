(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB78F6D)))
;; x should be Float32(0xCAB78F6D [Rational(-12029805, 2), -6014902.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xC0156F1EDA0000000000000000000000 [Rational(-12029805, 2), -6014902.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010101 #b0110111100011110110110100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
