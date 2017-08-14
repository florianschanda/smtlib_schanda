(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10010010110100000010110)))
;; x should be Float32(0xCAC96816 [Rational(-6599691), -6599691.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be -6599691

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100110110100101111110101))
;; z should be -6599691

(assert (not (= y z)))
(check-sat)
(exit)
