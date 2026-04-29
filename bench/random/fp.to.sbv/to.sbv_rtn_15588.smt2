(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AEAC462)))
;; x should be Float32(0x4AEAC462 [Rational(7692849), 7692849.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 7692849

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011101010110001000110001))
;; z should be 7692849

(assert (not (= y z)))
(check-sat)
(exit)
