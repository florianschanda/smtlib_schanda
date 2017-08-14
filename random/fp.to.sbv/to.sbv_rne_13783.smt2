(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAF9FAFF)))
;; x should be Float32(0xCAF9FAFF [Rational(-16382719, 2), -8191359.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -8191360

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100000110000001010000000))
;; z should be -8191360

(assert (not (= y z)))
(check-sat)
(exit)
