(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD1E0A1)))
;; x should be Float32(0xCAD1E0A1 [Rational(-13754529, 2), -6877264.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0xC15A3C1420000000 [Rational(-13754529, 2), -6877264.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC15A3C1420000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
