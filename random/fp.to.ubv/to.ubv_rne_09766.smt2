(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x432815BA)))
;; x should be Float32(0x432815BA [Rational(5507805, 32768), 168.084869])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 168

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000010101000))
;; z should be 168

(assert (= y z))
(check-sat)
(exit)
