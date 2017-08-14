(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x89168FBD)))
;; x should be Float32(0x89168FBD [Rational(-9867197, 5444517870735015415413993718908291383296), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(0x8001 [Rational(-1, 16777216), -0.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x8001)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
