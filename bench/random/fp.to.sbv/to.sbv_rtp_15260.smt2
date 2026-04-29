(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA77EBB0)))
;; x should be Float32(0xCA77EBB0 [Rational(-4061932), -4061932.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be -4061932

(declare-const z (_ BitVec 32))
(assert (= z #b11111111110000100000010100010100))
;; z should be -4061932

(assert (not (= y z)))
(check-sat)
(exit)
