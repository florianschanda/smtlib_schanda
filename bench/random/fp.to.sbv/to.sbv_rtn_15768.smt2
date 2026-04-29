(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000100 #b10001100011010000111101)))
;; x should be Float32(0x4246343D [Rational(12989501, 262144), 49.551014])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTN x)))
;; y should be 49

(declare-const z (_ BitVec 8))
(assert (= z #b00110001))
;; z should be 49

(assert (not (= y z)))
(check-sat)
(exit)
