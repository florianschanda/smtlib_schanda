(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010001 #b10110101011111110110000)))
;; x should be Float32(0x48DABFB0 [Rational(895995, 2), 447997.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 447997

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000001101101010111111101))
;; z should be 447997

(assert (not (= y z)))
(check-sat)
(exit)
