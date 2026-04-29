(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +sbv_8_bound)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000101 #b11111010000000000000000)))
;; x should be Float32(0x42FD0000 [Rational(253, 2), 126.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 127

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000001111111))
;; z should be 127

(assert (= y z))
(check-sat)
(exit)
