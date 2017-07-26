(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x43FDBFB0)))
;; x should be Float32(0x43FDBFB0 [Rational(1039355, 2048), 507.497559])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 507

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000111111011))
;; z should be 507

(assert (not (= y z)))
(check-sat)
(exit)
