(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10100101000110100110000)))
;; x should be Float32(0x4A528D30 [Rational(3449676), 3449676.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 3449676

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001101001010001101001100))
;; z should be 3449676

(assert (not (= y z)))
(check-sat)
(exit)
