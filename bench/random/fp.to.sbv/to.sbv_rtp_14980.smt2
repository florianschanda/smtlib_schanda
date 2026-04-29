(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b01011000 #b11101001001101110100101)))
;; x should be Float32(0x2C749BA5 [Rational(16030629, 4611686018427387904), 0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000001))
;; z should be 1

(assert (= y z))
(check-sat)
(exit)
