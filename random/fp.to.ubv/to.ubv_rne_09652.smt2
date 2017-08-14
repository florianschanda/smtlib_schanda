(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01100111111001100101011)))
;; x should be Float32(0x4AB3F32B [Rational(11793195, 2), 5896597.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 5896598

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010110011111100110010110))
;; z should be 5896598

(assert (not (= y z)))
(check-sat)
(exit)
