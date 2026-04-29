(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000110 #b01010001001010110111010)))
;; x should be Float32(0x432895BA [Rational(5524189, 32768), 168.584869])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 169

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000010101001))
;; z should be 169

(assert (= y z))
(check-sat)
(exit)
