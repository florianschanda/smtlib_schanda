(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b01111010 #b11111101100001011100010)))
;; x should be Float32(0x3D7EC2E2 [Rational(8348017, 134217728), 0.062198])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000001))
;; z should be 1

(assert (not (= y z)))
(check-sat)
(exit)
