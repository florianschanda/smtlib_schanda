(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11001011 #b00000011111001101100010)))
;; x should be Float32(0x6581F362 [Rational(76709362093038921318400), 76709362093038921318400.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0011101101010110111101011001101000101110010000010000001100111111))
;; z should be 4275874938784645951

(assert (not (= y z)))
(check-sat)
(exit)
