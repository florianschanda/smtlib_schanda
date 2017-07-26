(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +subnormal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00010110011101000010110)))
;; x should be Float32(0x000B3A16 [Rational(367883, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 0

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
