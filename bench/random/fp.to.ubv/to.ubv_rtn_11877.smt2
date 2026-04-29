(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AA74714)))
;; x should be Float32(0x4AA74714 [Rational(5481354), 5481354.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 5481354

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010100111010001110001010))
;; z should be 5481354

(assert (= y z))
(check-sat)
(exit)
