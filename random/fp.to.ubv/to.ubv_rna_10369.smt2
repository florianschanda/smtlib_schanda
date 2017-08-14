(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00001000001111000101101)))
;; x should be Float32(0x4A841E2D [Rational(8658477, 2), 4329238.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 4329239

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010000100000111100010111))
;; z should be 4329239

(assert (= y z))
(check-sat)
(exit)
