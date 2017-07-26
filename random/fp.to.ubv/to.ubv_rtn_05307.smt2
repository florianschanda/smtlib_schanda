(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN nan)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b00101100011001001100111)))
;; x should be Float32(NaN)

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b10101110001110000001101011011111))
;; z should be 2922912479

(assert (not (= y z)))
(check-sat)
(exit)
