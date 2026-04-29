(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00111101010001101010010)))
;; x should be Float32(0x4A9EA352 [Rational(5198249), 5198249.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be 5198249

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010011110101000110101001))
;; z should be 5198249

(assert (= y z))
(check-sat)
(exit)
