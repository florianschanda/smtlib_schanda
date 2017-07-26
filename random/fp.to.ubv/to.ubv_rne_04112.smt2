(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x687C5CE9)))
;; x should be Float32(0x687C5CE9 [Rational(4767000974229370839236608), 4767000974229370839236608.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0101101000101100110100011111010100101010101011001010101011010101))
;; z should be 6497799213301934805

(assert (= y z))
(check-sat)
(exit)
