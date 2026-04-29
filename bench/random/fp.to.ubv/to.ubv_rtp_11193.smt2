(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AA2013C)))
;; x should be Float32(0x4AA2013C [Rational(5308574), 5308574.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be 5308574

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010100010000000010011110))
;; z should be 5308574

(assert (not (= y z)))
(check-sat)
(exit)
