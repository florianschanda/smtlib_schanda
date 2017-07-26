(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000111 #b11111011111111110110000)))
;; x should be Float32(0x43FDFFB0 [Rational(1040379, 2048), 507.997559])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 507

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000111111011))
;; z should be 507

(assert (not (= y z)))
(check-sat)
(exit)
