(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b00101100100110011010000)))
;; x should be Float32(0x49164CD0 [Rational(615629), 615629.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 615629

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000010010110010011001101))
;; z should be 615629

(assert (= y z))
(check-sat)
(exit)
