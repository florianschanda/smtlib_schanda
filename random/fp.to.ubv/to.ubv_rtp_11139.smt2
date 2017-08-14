(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00001001101000100001100)))
;; x should be Float32(0x4A84D10C [Rational(4352134), 4352134.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be 4352134

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010000100110100010000110))
;; z should be 4352134

(assert (not (= y z)))
(check-sat)
(exit)
