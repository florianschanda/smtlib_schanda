(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00010101010000101000100)))
;; x should be Float32(0x4A8AA144 [Rational(4542626), 4542626.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 4542626

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010001010101000010100010))
;; z should be 4542626

(assert (= y z))
(check-sat)
(exit)
