(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB15D2C)))
;; x should be Float32(0xCAB15D2C [Rational(-5811862), -5811862.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -5811862

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101001110101000101101010))
;; z should be -5811862

(assert (not (= y z)))
(check-sat)
(exit)
