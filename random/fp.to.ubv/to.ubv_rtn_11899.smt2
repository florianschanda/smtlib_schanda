(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00101000111001011011001)))
;; x should be Float32(0x4A9472D9 [Rational(9728729, 2), 4864364.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 4864364

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010010100011100101101100))
;; z should be 4864364

(assert (= y z))
(check-sat)
(exit)
