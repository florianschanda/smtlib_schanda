(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10010010110100000010101)))
;; x should be Float32(0xCAC96815 [Rational(-13199381, 2), -6599690.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -6599690

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100110110100101111110110))
;; z should be -6599690

(assert (not (= y z)))
(check-sat)
(exit)
