(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010000 #b01000000111001011000000)))
;; x should be Float32(0x482072C0 [Rational(164299), 164299.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 164299

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000101000000111001011))
;; z should be 164299

(assert (not (= y z)))
(check-sat)
(exit)
