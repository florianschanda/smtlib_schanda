(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01001100011000101001100)))
;; x should be Float32(0x4A26314C [Rational(2722899), 2722899.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 2722899

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001010011000110001010011))
;; z should be 2722899

(assert (= y z))
(check-sat)
(exit)
