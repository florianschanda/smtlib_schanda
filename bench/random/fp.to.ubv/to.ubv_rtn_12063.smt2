(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10110111 #b11011001001111111000001)))
;; x should be Float32(0x5BEC9FC1 [Rational(133207491562438656), 133207491562438656.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 133207491562438656

(declare-const z (_ BitVec 64))
(assert (= z #b0000000111011001001111111000001000000000000000000000000000000000))
;; z should be 133207491562438656

(assert (not (= y z)))
(check-sat)
(exit)
