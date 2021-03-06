(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10110001 #b00000000000110011100000)))
;; x should be Float32(0x58800CE0 [Rational(1126342288474112), 1126342288474112.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 1126342288474112

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000100000000000110011100000000000000000000000000000000))
;; z should be 1126342288474112

(assert (= y z))
(check-sat)
(exit)
