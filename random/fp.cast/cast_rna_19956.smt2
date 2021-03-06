(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AFFFC45)))
;; x should be Float32(0x4AFFFC45 [Rational(16776261, 2), 8388130.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x415FFF88A0000000 [Rational(16776261, 2), 8388130.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x415FFF88A0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
