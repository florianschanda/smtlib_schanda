(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01001110100011100010101)))
;; x should be Float32(0x4AA74715 [Rational(10962709, 2), 5481354.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 5481354

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010100111010001110001010))
;; z should be 5481354

(assert (= y z))
(check-sat)
(exit)
