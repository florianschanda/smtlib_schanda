(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000110 #b01010000001010110111010)))
;; x should be Float32(0x432815BA [Rational(5507805, 32768), 168.084869])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNE x)))
;; y should be 168

(declare-const z (_ BitVec 8))
(assert (= z #b10101000))
;; z should be 168

(assert (= y z))
(check-sat)
(exit)
