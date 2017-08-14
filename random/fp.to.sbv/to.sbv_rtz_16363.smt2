(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x499905FC)))
;; x should be Float32(0x499905FC [Rational(2507135, 2), 1253567.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 1253567

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000100110010000010111111))
;; z should be 1253567

(assert (not (= y z)))
(check-sat)
(exit)
