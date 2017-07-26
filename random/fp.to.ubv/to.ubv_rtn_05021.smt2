(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b11001000011011000101000)))
;; x should be Float32(0x49643628 [Rational(1869509, 2), 934754.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 934754

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000011100100001101100010))
;; z should be 934754

(assert (= y z))
(check-sat)
(exit)
