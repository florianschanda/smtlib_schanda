(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB915DB)))
;; x should be Float32(0xCAB915DB [Rational(-12129755, 2), -6064877.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -6064878

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101000110111010100010010))
;; z should be -6064878

(assert (not (= y z)))
(check-sat)
(exit)
