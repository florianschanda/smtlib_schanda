(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10100011 #b10001010100011000010010)))
;; x should be Float32(0x51C54612 [Rational(105910517760), 105910517760.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 105910517760

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000001100010101000110000100100000000000000))
;; z should be 105910517760

(assert (= y z))
(check-sat)
(exit)
