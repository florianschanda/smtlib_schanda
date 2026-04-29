(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01000100000000100111101)))
;; x should be Float32(0x4AA2013D [Rational(10617149, 2), 5308574.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be 5308575

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010100010000000010011111))
;; z should be 5308575

(assert (not (= y z)))
(check-sat)
(exit)
