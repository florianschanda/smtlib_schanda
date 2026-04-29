(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x482072A0)))
;; x should be Float32(0x482072A0 [Rational(328597, 2), 164298.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 164299

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000101000000111001011))
;; z should be 164299

(assert (not (= y z)))
(check-sat)
(exit)
