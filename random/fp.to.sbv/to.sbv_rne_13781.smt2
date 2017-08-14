(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAF9FAFE)))
;; x should be Float32(0xCAF9FAFE [Rational(-8191359), -8191359.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be -8191359

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100000110000001010000001))
;; z should be -8191359

(assert (not (= y z)))
(check-sat)
(exit)
