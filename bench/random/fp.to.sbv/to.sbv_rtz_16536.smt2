(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001100 #b11111101110110100110011)))
;; x should be Float32(0x467EED33 [Rational(16706867, 1024), 16315.299805])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 16315

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000011111110111011))
;; z should be 16315

(assert (not (= y z)))
(check-sat)
(exit)
