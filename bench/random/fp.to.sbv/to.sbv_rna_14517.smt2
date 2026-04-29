(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01111000110100101010000)))
;; x should be Float32(0xCABC6950 [Rational(-6173864), -6173864.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -6173864

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101000011100101101011000))
;; z should be -6173864

(assert (= y z))
(check-sat)
(exit)
