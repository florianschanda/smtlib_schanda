(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01100011000101111010010)))
;; x should be Float32(0xCA318BD2 [Rational(-5817833, 2), -2908916.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -2908916

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110100111001110100001100))
;; z should be -2908916

(assert (not (= y z)))
(check-sat)
(exit)
