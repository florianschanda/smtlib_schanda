(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b11000111001001001101000)))
;; x should be Float32(0x49E39268 [Rational(1864269), 1864269.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 1864269

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000111000111001001001101))
;; z should be 1864269

(assert (= y z))
(check-sat)
(exit)
