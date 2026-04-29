(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0049B7FD)))
;; x should be Float32(0x0049B7FD [Rational(4831229, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x38026DFF40000000 [Rational(4831229, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x38026DFF40000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
