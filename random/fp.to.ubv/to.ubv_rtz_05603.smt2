(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTZ -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00011101001011101101110)))
;; x should be Float32(0x800E976E [Rational(-478135, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTZ x)))
;; y should be 0

(declare-const z (_ BitVec 8))
(assert (= z #b00000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
