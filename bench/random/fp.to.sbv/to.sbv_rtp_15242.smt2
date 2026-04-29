(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA92859C)))
;; x should be Float32(0xCA92859C [Rational(-4801230), -4801230.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be -4801230

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101101101011110100110010))
;; z should be -4801230

(assert (not (= y z)))
(check-sat)
(exit)
