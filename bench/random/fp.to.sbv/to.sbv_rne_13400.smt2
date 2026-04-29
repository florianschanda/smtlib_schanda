(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11101001100100110101100)))
;; x should be Float32(0x4A74C9AC [Rational(4010603), 4010603.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 4010603

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001111010011001001101011))
;; z should be 4010603

(assert (not (= y z)))
(check-sat)
(exit)
