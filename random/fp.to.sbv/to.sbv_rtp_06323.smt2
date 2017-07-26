(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +0)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000000)))
;; x should be Float32(+zero)

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 0

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
