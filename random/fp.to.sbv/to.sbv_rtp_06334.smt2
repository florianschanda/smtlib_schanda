(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01101100100110100110000)))
;; x should be Float32(0x49B64D30 [Rational(1493414), 1493414.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 1493414

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000101101100100110100110))
;; z should be 1493414

(assert (not (= y z)))
(check-sat)
(exit)
